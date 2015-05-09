//
//  main.cpp
//  1.1.2 Factory
//
//  Created by MCUer on 15/5/9.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#include <string>
#include <iostream>

using namespace std;

class Computer
{
public:
    virtual void Run() = 0;
    virtual void Stop() = 0;
    
    virtual ~Computer() {}; /* without this, you do not call Laptop or Desktop destructor in this example! */
};
class Laptop: public Computer
{
public:
    virtual void Run(){mHibernating = false;};
    virtual void Stop(){mHibernating = true;};
    virtual ~Laptop() {}; /* because we have virtual functions, we need virtual destructor */
private:
    bool mHibernating; // Whether or not the machine is hibernating
};

class Desktop: public Computer
{
public:
    virtual void Run(){mOn = true;};
    virtual void Stop(){mOn = false;};
    virtual ~Desktop() {};
private:
    bool mOn; // Whether or not the machine has been turned on
};


class ComputerFactory
{
public:
    static Computer *NewComputer(const std::string &description)
    {
        if(description == "laptop")
        {
            std::cout<<"create laptop"<<std::endl;
            return new Laptop;
        }
        if(description == "desktop")
        {
            std::cout<<"create desktop"<<std::endl;
            return new Desktop;
        }
        return NULL;
    }
};

int main(int argc, const char * argv[]) {
    Computer *computer = ComputerFactory::NewComputer("laptop");
    computer->Run();
    computer->Stop();
    delete computer;
    
    computer = ComputerFactory::NewComputer("desktop");
    computer->Run();
    computer->Stop();
    delete computer;
    
    return 0;
}
