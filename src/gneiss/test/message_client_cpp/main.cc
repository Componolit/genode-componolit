
#include <base/component.h>
#include <base/signal.h>
#include <util/string.h>
#include <gneiss_message_client.h>

struct Main
{
    Genode::Env &_env;
    Genode::Signal_handler<Main> _sigh;
    Gneiss::Message_Connection _connection;

    void recv()
    {
        if(_connection.avail()){
            Gneiss::Message_Session::Message_Buffer buf = _connection.read();
            Genode::log("Received: ", Genode::Cstring((char *)(&buf)));
            _env.parent().exit(0);
        }else{
            Genode::warning("Unexpected event");
            _env.parent().exit(1);
        }
    }

    Main(Genode::Env &env):
        _env(env),
        _sigh(env.ep(), *this, &Main::recv),
        _connection(env)
    {
        _connection.sigh(_sigh);
        Gneiss::Message_Session::Message_Buffer buf = {};
        Genode::memset(&buf, 0, sizeof(Gneiss::Message_Session::Message_Buffer));
        Genode::strncpy((char *)(&buf), "Hello World!", 13);
        _connection.write(buf);
        Genode::log("Sent: ", Genode::Cstring((char *)(&buf)));
    }
};

void Component::construct(Genode::Env &env)
{
    env.exec_static_constructors();
    static Main main(env);
}
