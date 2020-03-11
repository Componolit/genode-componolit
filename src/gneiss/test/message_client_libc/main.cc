
#include <libc/component.h>
#include <base/signal.h>
#include <base/thread.h>
#include <base/semaphore.h>
#include <util/string.h>
#include <gneiss_message_client.h>

class Main_Thread : public Genode::Thread
{
    private:
        Libc::Env &_env;
        Gneiss::Message_Connection &_connection;
        Genode::Semaphore &_semaphore;

        Gneiss::Message_Session::Message_Buffer read()
        {
            if(!_connection.avail()){
                do{
                    _semaphore.down();
                }while(_semaphore.cnt() && !_connection.avail());
            }
            return _connection.read();
        }

        void entry() override
        {
            Libc::with_libc([&] (){
                Gneiss::Message_Session::Message_Buffer buf = read();
                Genode::log("Received: ", Genode::Cstring((char *)(&buf)));
                _env.parent().exit(0);
            });
        }

    public:
        Main_Thread(Libc::Env &env, Gneiss::Message_Connection &connection, Genode::Semaphore &semaphore) :
            Genode::Thread(env, "main", 1024 * 8),
            _env(env),
            _connection(connection),
            _semaphore(semaphore)
        { }
};

struct Main
{
    Libc::Env &_env;
    Genode::Signal_handler<Main> _sigh;
    Genode::Semaphore _semaphore;
    Gneiss::Message_Connection _connection;
    Main_Thread _main_thread;

    void recv()
    {
        _semaphore.up();
    }

    Main(Libc::Env &env):
        _env(env),
        _sigh(env.ep(), *this, &Main::recv),
        _semaphore(),
        _connection(env),
        _main_thread(env, _connection, _semaphore)
    {
        _main_thread.start();
        _connection.sigh(_sigh);
        Gneiss::Message_Session::Message_Buffer buf = {};
        Genode::memset(&buf, 0, sizeof(Gneiss::Message_Session::Message_Buffer));
        Genode::strncpy((char *)(&buf), "Hello World!", 13);
        _connection.write(buf);
        Genode::log("Sent: ", Genode::Cstring((char *)(&buf)));
    }
};

void Libc::Component::construct(Libc::Env &env)
{
    static Main inst(env);
}
