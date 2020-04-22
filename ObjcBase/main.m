//
//  main.m
//  ObjcBase
//
//  Created by Андрей Закусов on 12.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>

enum Operation {
    Multiplication,
    Subtraction,
    Comparative,
    Division
};

typedef enum Operation Operation;

int calculate(Operation operation, int a, int b) {
    
    if (operation == Multiplication) {
        return a + b;
    }
    else if (operation == Subtraction) {
        return a - b;
    }
    else if (operation == Comparative) {
        return a * b;
    }
    else if (operation == Division) {
        return a / b;
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
    
    return a + b;
    
}

void calculateTask(){
    int a = 10;
    int b = 2;
    
    NSLog(@"%i + %i = %i\n", a, b, calculate(Multiplication, a, b));
    NSLog(@"%i - %i = %i\n", a, b, calculate(Subtraction,a, b));
    NSLog(@"%i * %i = %i\n", a, b, calculate(Comparative,a, b));
    NSLog(@"%i / %i = %i\n", a, b, calculate(Division,a, b));
}

void printUsersNumbers(){
    NSMutableArray *marray = [[NSMutableArray alloc] init];
    int currentInt = 0;
    for(int i = 0; currentInt != -1 && i < 20; i++ ){
        printf("Введите число (-1 для выхода): ");
        scanf("%i", &currentInt);
        if (currentInt != -1){
            [marray addObject:[NSString stringWithFormat:@"element #%d", currentInt]];
        }
    }
    
    printf("Вы ввели числа:\n");
    NSLog(@"%@", marray);
    printf("\n");
    
}

enum Gender {
    Male,
    Female
};

typedef enum Gender Gender;

struct User {
   __unsafe_unretained NSString *name;
    int age;
    Gender gender;
};

typedef struct User User;

void usersTask(){
    //NSMutableArray *marray = [[NSMutableArray alloc] init];
    User *usersList[3];
    
    for(int i = 0; i < 3; i++ ){
        User user;
        char strLN[50] = {0};
        printf("Введите имя пользователя: ");
        scanf("%s", strLN);
        user.name = [NSString stringWithUTF8String:strLN];
        
        int age;
        printf("Введите возраст пользователя: ");
        scanf("%i", &age);
        user.age = age;
        
        int gender;
        printf("Укажите пол пользователя, 1 - мужской, 2 - женский: ");
        scanf("%i", &gender);
        user.gender = gender == 1 ? Male: Female;
        
        usersList[i] = &user;
        
    }
    
    printf("Список пользователей:\n");
    for(int i = 0; i < 3; i++ ){
        NSLog(@"%@", usersList[i]->name); //это не работает
    }
    printf("\n");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //printUsersNumbers();
        
        //calculateTask();
        
        usersTask();
        
    }
    return 0;
}
