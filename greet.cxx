#include "helloworld/greet.hxx"

namespace Helloworld
{

std::string
greet(std::string name)
{
#ifdef HAS_TO_STRING
    auto greeting = "Hello, " + name + "! "
                  + "Here is a number: " + std::to_string( 0.123);
#else
    auto greeting = "Hello, " + name + "! ";
#endif
    return greeting;
}

}
