//
//  TDFBridgeKit.m
//  Pods-TDFBridgeKit_Example
//
//  Created by liangjin bai on 2018/11/2.
//

#import "TDFBridgeKit.h"
#import <objc/runtime.h>

@implementation TDFBridgeKit

+ (void)registerObject:(id)object forProcotol:(Protocol *)procotol {
    if (!object || !procotol || ![object conformsToProtocol:procotol]) return;
    
    NSMapTable *map = [self registeredMap];
    if (!map) {
        map = [NSMapTable weakToWeakObjectsMapTable];
        [self setRegisteredMap:map];
    }
    [map setObject:object forKey:procotol];
}

+ (id)objectForProcotol:(Protocol *)procotol {
    
    return [[self registeredMap]objectForKey:procotol];
}

+ (void)removeForProcotol:(Protocol *)procotol {
    
    NSMapTable *map = [self registeredMap];
    [map removeObjectForKey:procotol];
    if (map.count == 0) {
        [self setRegisteredMap:nil];
    }
}

+ (NSArray *)allObjects {
    
    return [[self registeredMap]objectEnumerator].allObjects;
}

+ (void)removeAllObjects {
    
    [[self registeredMap]removeAllObjects];
    [self setRegisteredMap:nil];
}

+ (void)setRegisteredMap:(NSMapTable *)map {
    
    objc_setAssociatedObject(self, @selector(registeredMap), map, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+ (NSMapTable *)registeredMap {
    
    return objc_getAssociatedObject(self, _cmd);
}

@end
