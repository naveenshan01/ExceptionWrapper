//
//  ExceptionWrapper.h
//  NanuSoft
//
//  Created by Naveen Shan on 7/10/20.
//  Copyright © 2020 naveenshan01@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ExecutionBlock)(void);

@interface ExceptionWrapper : NSObject

/// Helps to wrap the execution block in objC exception.
/// @param string `Ignore,` Used to keep the exception status.
/// @param error  `Ignore,` Used to get the swift exception syntax.
+ (NSString *_Nullable)catchExceptions:(ExecutionBlock _Nullable)string error:(NSError * _Nullable __autoreleasing *_Nullable)error;

@end

