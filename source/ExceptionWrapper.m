//
//  ExceptionWrapper.h
//  NanuSoft
//
//  Created by Naveen Shan on 7/10/20.
//  Copyright © 2020 naveenshan01@gmail.com. All rights reserved.
//

#import "ExceptionWrapper.h"

@implementation ExceptionWrapper

+ (NSString *_Nullable)catchExceptions:(ExecutionBlock _Nullable)tryBlock error:(NSError * _Nullable __autoreleasing *_Nullable)error {
    @try {
        tryBlock();
        return @"";
    }
    @catch (NSException *exception) {
        *error = [NSError errorWithDomain: NSCocoaErrorDomain code:101 userInfo: @{NSLocalizedDescriptionKey: [exception description]}];
        return nil;
    }
}

@end
