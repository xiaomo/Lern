//
//  main.cpp
//  1.1.2 Factory2
//
//  Created by MCUer on 15/5/9.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

//#include <iostream>
//
//int main(int argc, const char * argv[]) {
//    // insert code here...
//    std::cout << "Hello, World!\n";
//    return 0;
//}
#include <stdexcept>
#include <iostream>
#include <memory>

class Pizza {
public:
    virtual int getPrice() const = 0;
    virtual ~Pizza() {};  /* without this, no destructor for derived Pizza's will be called. */
};

class HamAndMushroomPizza : public Pizza {
public:
    virtual int getPrice() const { return 850; };
    virtual ~HamAndMushroomPizza() {};
};

class DeluxePizza : public Pizza {
public:
    virtual int getPrice() const { return 1050; };
    virtual ~DeluxePizza() {};
};

class HawaiianPizza : public Pizza {
public:
    virtual int getPrice() const { return 1150; };
    virtual ~HawaiianPizza() {};
};

class PizzaFactory {
public:
    enum PizzaType {
        HamMushroom,
        Deluxe,
        Hawaiian
    };
    
    static Pizza* createPizza(PizzaType pizzaType) {
        switch (pizzaType) {
            case HamMushroom:
                return new HamAndMushroomPizza();
            case Deluxe:
                return new DeluxePizza();
            case Hawaiian:
                return new HawaiianPizza();
        }
        throw "invalid pizza type.";
    }
};

/*
 * Create all available pizzas and print their prices
 */
void pizza_information( PizzaFactory::PizzaType pizzatype )
{
    Pizza* pizza = PizzaFactory::createPizza(pizzatype);
    std::cout << "Price of " << pizzatype << " is " << pizza->getPrice() << std::endl;
    delete pizza;
}

int main ()
{
    pizza_information( PizzaFactory::HamMushroom );
    pizza_information( PizzaFactory::Deluxe );
    pizza_information( PizzaFactory::Hawaiian );
}
