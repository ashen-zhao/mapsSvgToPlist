//
//  RegX.m
//  SVG_Maps
//
//  Created by 追风者 on 2022/11/16.
//

#import "RegX.h"
#import<objc/runtime.h>

@implementation RegX

+ (void)regexHtmlstr:(NSString *)html regex:(NSString *)regex success:(void(^)(NSArray *))success {
    NSRegularExpression * regular = [[NSRegularExpression alloc] initWithPattern:regex options:NSRegularExpressionCaseInsensitive error:nil];

    NSArray * matchs = [regular matchesInString:html options:NSMatchingReportProgress range:NSMakeRange(0, html.length)];
    
    NSMutableArray * lists = [NSMutableArray array];
    
    for (NSTextCheckingResult * match in matchs) {
        NSString *name = [html substringWithRange:[match rangeAtIndex:1]];
        [lists addObject:name];
    }
    success(lists);
}
@end
