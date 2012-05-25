//
//  FileUtility.m
//  storiesiOS
//
//  Created by Gennady Borukhovich on 1/25/12.
//  Copyright (c) 2012 Intuary Inc. All rights reserved.
//

#import "FileUtility.h"

@implementation FileUtility
+ (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
{
    const char* filePath = [[URL path] fileSystemRepresentation];
    
    const char* attrName = "com.apple.MobileBackup";
    u_int8_t attrValue = 1;
    
    int result = setxattr(filePath, attrName, &attrValue, sizeof(attrValue), 0, 0);
    return result == 0;
}
@end
