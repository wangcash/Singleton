//
//  main.m
//  Singleton
//
//  Created by Cash on 13-3-22.
//  Copyright (c) 2013年 imwangwei.cn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[])
{

  @autoreleasepool {
      
    // insert code here...
    NSLog(@"This is Singleton demo.");
    
    Singleton *singleton1 = [Singleton sharedInstance];
    
    NSLog(@"%@", singleton1);
    
    Singleton *singleton2 = [[Singleton allocWithZone:nil] init];
    
    NSLog(@"%@", singleton2);
    
    

  }
    return 0;
}

