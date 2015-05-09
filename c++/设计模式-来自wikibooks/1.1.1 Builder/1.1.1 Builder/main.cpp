//
//  main.cpp
//  1.1.1 Builder
//
//  Created by MCUer on 15/5/9.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//
/*
#include <iostream>

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}*/
#include <string>
#include <iostream>

using namespace std;

// "Product"
class Pizza
{
public:
    void setDough(const string& dough)
    {
        m_dough = dough;
    }
    void setSauce(const string& sauce)
    {
        m_sauce = sauce;
    }
    void setTopping(const string& topping)
    {
        m_topping = topping;
    }
    void open() const
    {
        cout << "Pizza with " << m_dough << " dough, " << m_sauce << " sauce and "
        << m_topping << " topping. Mmm." << endl;
    }
private:
    string m_dough;
    string m_sauce;
    string m_topping;
};

// "Abstract Builder"
class PizzaBuilder
{
public:
    virtual ~PizzaBuilder() {};
    
    Pizza* getPizza()
    {
        return m_pizza;
    }
    void createNewPizzaProduct()
    {
        m_pizza = new Pizza;
    }
    virtual void buildDough() = 0;
    virtual void buildSauce() = 0;
    virtual void buildTopping() = 0;
protected:
    Pizza* m_pizza;
};

//----------------------------------------------------------------

class HawaiianPizzaBuilder : public PizzaBuilder
{
public:
    virtual ~HawaiianPizzaBuilder() {};
    
    virtual void buildDough()
    {
        m_pizza->setDough("cross");
    }
    virtual void buildSauce()
    {
        m_pizza->setSauce("mild");
    }
    virtual void buildTopping()
    {
        m_pizza->setTopping("ham+pineapple");
    }
};

class SpicyPizzaBuilder : public PizzaBuilder
{
public:
    virtual ~SpicyPizzaBuilder() {};
    
    virtual void buildDough()
    {
        m_pizza->setDough("pan baked");
    }
    virtual void buildSauce()
    {
        m_pizza->setSauce("hot");
    }
    virtual void buildTopping()
    {
        m_pizza->setTopping("pepperoni+salami");
    }
};

//----------------------------------------------------------------

class Cook
{
public:
    void setPizzaBuilder(PizzaBuilder* pb)
    {
        m_pizzaBuilder = pb;
    }
    Pizza* getPizza()
    {
        return m_pizzaBuilder->getPizza();
    }
    void constructPizza()
    {
        m_pizzaBuilder->createNewPizzaProduct();
        m_pizzaBuilder->buildDough();
        m_pizzaBuilder->buildSauce();
        m_pizzaBuilder->buildTopping();
    }
private:
    PizzaBuilder* m_pizzaBuilder;
};

int main()
{
    Cook cook;
    PizzaBuilder* hawaiianPizzaBuilder = new HawaiianPizzaBuilder;
    PizzaBuilder* spicyPizzaBuilder   = new SpicyPizzaBuilder;
    
    cook.setPizzaBuilder(hawaiianPizzaBuilder);
    cook.constructPizza();
    
    Pizza* hawaiian = cook.getPizza();
    hawaiian->open();
    
    cook.setPizzaBuilder(spicyPizzaBuilder);
    cook.constructPizza();
    
    Pizza* spicy = cook.getPizza();
    spicy->open();
    
    delete hawaiianPizzaBuilder;
    delete spicyPizzaBuilder;
    delete hawaiian;  
    delete spicy;     
}
