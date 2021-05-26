#include "../include/Person.hpp"
#include <string.h>


Person::Person(const char* name) {
    this->name = strdup(name);
}