//
//  Data.h
//  Notes
//
//  Created by Andrey on 8/20/13.
//  Copyright (c) 2013 EnjoyTheApp. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kDefaultText @"New Note"
#define kAllNotes @"notes"
#define kDetailView @"showDetail"

@interface Data : NSObject

+(NSMutableDictionary *)getAllNotes;
+(void) setCurrentKey:(NSString *)key;
+(NSString *)getcurrentKey;
+(void)setNoteForCurrentKey:(NSString *)note;
+(void)setNote:(NSString *)note forKey:(NSString *)key;
+(void)removeNoteForKey:(NSString *)key;

+(void)saveNotes;
+(NSString *)filePath;
@end
