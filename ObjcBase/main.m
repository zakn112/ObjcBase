//
//  main.m
//  ObjcBase
//
//  Created by Андрей Закусов on 12.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *students[20];
        int countStudents = 0;
        while (1) {
            int action = 0;
            printf("Выберете действие:\n Ввести студента - 1, вывести спикос студентов - 2, выйти из программы - 3: ");
            scanf("%i", &action);
            
            if (action == 3){
                break;
            }else if (action == 1){
                char strN[50] = {0};
                char strSN[50] = {0};
                printf("Введите имя студента: ");
                scanf("%s", strN);
                printf("Введите фамилию студента: ");
                scanf("%s", strSN);
                students[countStudents] = [[Student alloc] initWithName: [NSString stringWithUTF8String:strN] withSurname: [NSString stringWithUTF8String:strSN]];
               
                int age;
                printf("Введите возраст студента: ");
                scanf("%i", &age);
                [students[countStudents] setStudentAge:age];
                
                countStudents++;
                
            }else if (action == 2){
                
                for (int i = 0; i < countStudents; i++) {
                    NSLog(@"%d) %@", i, students[i]);
                }
                
            }else{
                printf("Не верная команда");
                break;
            }
            
        }
    }
    return 0;
}
