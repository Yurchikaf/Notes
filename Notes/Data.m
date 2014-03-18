//
//  Data.m
//  Notes
//
//  Created by Andrey on 8/20/13.
//  Copyright (c) 2013 EnjoyTheApp. All rights reserved.
//

#import "Data.h"

@implementation Data

static NSMutableDictionary *allNotes;
static NSString *currentKey;
+(NSMutableDictionary *)getAllNotes
{
    if (allNotes == nil) {
 //       allNotes = [[NSMutableDictionary alloc] initWithDictionary:[[NSUserDefaults standardUserDefaults] dictionaryForKey:kAllNotes ]];
        allNotes = [[NSMutableDictionary alloc] initWithDictionary:[NSDictionary dictionaryWithContentsOfFile:[self filePath]]];
    }
    return allNotes;
}
+(void) setCurrentKey:(NSString *)key
{
    currentKey = key;
}
+(NSString *)getcurrentKey
{
    return currentKey;
}
+(void)setNoteForCurrentKey:(NSString *)note
{
    [self setNote:note forKey:currentKey];
}
+(void)setNote:(NSString *)note forKey:(NSString *)key
{
    [allNotes setObject:note forKey:key];
}
+(void)removeNoteForKey:(NSString *)key
{
    [allNotes removeObjectForKey:key];
}
+(void)saveNotes
{
  //  [[NSUserDefaults standardUserDefaults] setObject:allNotes forKey:kAllNotes];
    [allNotes writeToFile:[self filePath] atomically:YES];
}

+(NSString *)filePath
{
    NSArray *directories = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *documents = [directories objectAtIndex:0];
    return [documents stringByAppendingPathComponent:kAllNotes];
}

@end
