#include "greet.hxx"

#include <iostream>

using namespace std;

int main(int argc, char** argv)
{
    string name = argc >= 2 ? argv[1] : "world";
    cout << greet(name) << endl;
    return 0;
}
