//
//  main.m
//  ObjcBase
//
//  Created by Андрей Закусов on 12.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *text;

typedef void (^QuestionSpeaker1Block) (void);
typedef void (^AnswerSpeaker1Block) (void);
typedef void (^QuestionSpeaker2Block) (NSString *text);
typedef void (^AnswerSpeaker2Block) (NSString *text);
typedef void (^QuestionSpeaker3Block) (NSString *text);
typedef void (^AnswerSpeaker3Block) (NSString *text);

QuestionSpeaker1Block questionSpeaker1 = ^(void) {
    sleep(1);
    NSLog(@"Speaker1 Question?");
};

AnswerSpeaker1Block answerSpeaker1 = ^(void) {
    NSLog(@"Speaker1 Answer...");
};

QuestionSpeaker2Block questionSpeaker2 = ^(NSString *text) {
    NSLog(@"Speaker2 Question: %@?", text);
};

AnswerSpeaker2Block answerSpeaker2 = ^(NSString *text) {
    NSLog(@"Speaker1 Answer: %@.", text);
};

QuestionSpeaker3Block questionSpeaker3 = ^(NSString *text) {
    NSLog(@"Speaker1 Question: %@?", text);
};

AnswerSpeaker3Block answerSpeaker3 = ^(NSString *text) {
    NSLog(@"Speaker1 Answer: %@.", text);
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Использование блоков с параметрами
        questionSpeaker2(@"Что");
        answerSpeaker3(@"Ничего");
        questionSpeaker3(@"Почему");
        answerSpeaker2(@"Потому");
        
        //Последовательная очередь
        dispatch_queue_t queue = dispatch_queue_create("ru.example.queue", NULL);
        dispatch_async(queue, questionSpeaker1);
        dispatch_async(queue, answerSpeaker1);

        sleep(2);
        //параллельная очередь
        dispatch_queue_t queue2 = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
        dispatch_async(queue2, questionSpeaker1);
        dispatch_async(queue2, answerSpeaker1);
        
        sleep(2);
    
        //параллельная очередь с синхронными задачами
        dispatch_queue_t queue3 = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
        dispatch_sync(queue3, questionSpeaker1);
        dispatch_async(queue3, answerSpeaker1);
        
        sleep(2);
        
    }
    return 0;
}


