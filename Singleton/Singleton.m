//
//  Singleton.m
//  Singleton
//
//  Created by Cash on 13-3-22.
//  Copyright (c) 2013年 imwangwei.cn. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *uniqueInstance; //Singleton类唯一的实例

+ (Singleton *)sharedInstance
{
  if (uniqueInstance == nil) {
    //uniqueInstance = [[super allocWithZone:nil] init];  //因为self的alloc被重载了，所以要借用super的分配方法。注意不可以用[super alloc]，会和[Singleton allocWithZone]造成死循环。
    uniqueInstance = NSAllocateObject([self class], 0, nil);
  }
  return uniqueInstance;
}

//重载分配方法
+ (id)allocWithZone:(NSZone *)zone
{
  return [[self sharedInstance] retain];
}

//重载复制和retain
- (id)copyWithZone:(NSZone *)zone
{
  return self;
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
  return self;
}

- (id)retain
{
  return self;
}

//重载释放和自动释放方法
- (oneway void)release
{
}

- (id)autorelease
{
  return self;
}

//重载获得引用技术方法
- (NSUInteger)retainCount
{
  return NSUIntegerMax;
}

@end
