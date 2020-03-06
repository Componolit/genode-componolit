
#include <base/component.h>
#include <base/signal.h>
#include <util/string.h>
#include <gneiss_memory_client.h>

struct Main
{
    Genode::Env &_env;
    Gneiss::Memory_Connection _connection;

    Main(Genode::Env &env):
        _env(env),
        _connection(env, 1024)
    {
        Genode::log("Data: ", Genode::Cstring(_connection.local_addr<char>()));
        env.parent().exit(0);
    }
};

void Component::construct(Genode::Env &env)
{
    env.exec_static_constructors();
    static Main main(env);
}
