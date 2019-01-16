//
//  TDFBridgeKit.h
//  Pods-TDFBridgeKit_Example
//
//  Created by liangjin bai on 2018/11/2.
//

#import <Foundation/Foundation.h>
#import "TDFBridgeMacro.h"

NS_ASSUME_NONNULL_BEGIN

@interface TDFBridgeKit : NSObject

/**
 注册对象

 @param object 遵循协议的对象
 @param procotol 遵循的协议
 */
+ (void)registerObject:(id)object forProcotol:(Protocol *)procotol;

/**
 获取注册的对象

 @param procotol 注册对象所遵循的协议
 @return 找到的对象
 */
+ (id)objectForProcotol:(Protocol *)procotol;

/**
 删除注册的对象

 @param procotol 对象所遵循的协议
 */
+ (void)removeForProcotol:(Protocol *)procotol;

/**
 获取所有的注册对象

 @return result
 */
+ (NSArray *)allObjects;

@end

NS_ASSUME_NONNULL_END
