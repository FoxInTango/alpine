#include <regex.h>
#include <iostream>
#include <stdio.h>

int main(int argc,char** argv){

    int index = 0;
    while(true) {
        if(argc > index) { 
            std::cout << argv[index] << std::endl;
            index ++;
        } else break;
    }
    return 0;
}

