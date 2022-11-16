//
//  RegX.h
//  SVG_Maps
//
//  Created by 追风者 on 2022/11/16.
//

#import <Foundation/Foundation.h>
#import<objc/runtime.h>
NS_ASSUME_NONNULL_BEGIN

@interface RegX : NSObject
/// ([\u4E00-\u9FA5]+) 匹配中文
/// bezier(.+?)Path = UIBezierPath() // 匹配贝塞尔实例变量
///
+ (void)regexHtmlstr:(NSString *)html regex:(NSString *)regex success:(void(^)(NSArray *))success;
@end

NS_ASSUME_NONNULL_END
