//
//  FileUtility.h
//  storiesiOS
//
//  Created by Gennady Borukhovich on 1/25/12.
//  Copyright (c) 2012 Intuary Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <sys/xattr.h>

@interface FileUtility : NSObject



+ (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL;
@end
