#include "helloworld/greet.hxx"

namespace Helloworld
{

std::string
greet(std::string name)
{
    return (std::string) "Hello, " + name + "!";
}

}
