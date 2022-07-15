#include <sol/sol.hpp>

#include <iostream>

void hello_cpp(float x)
{
    std::cout << x << std::endl;
}

int main()
{
    sol::state lua;

    lua.set_function("hello_lua", &hello_cpp);

    lua.script("hello_lua(4.0 + 5.0)");
}