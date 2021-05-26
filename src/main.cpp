#include "../include/Person.hpp"
#include "../include/Animal.hpp"
#include <stdio.h>


int main(int argc, char* argv[]) {
    Person* person = new Person("John Doe");
    printf("address of person: %x\n", person);


    Animal* animal = new Animal(6);

    printf("address of animal: %x\n", animal);

    return 0;
}