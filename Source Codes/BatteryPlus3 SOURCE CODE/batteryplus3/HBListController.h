// Happy April Fool's Day 2017! -TheComputerWhisperer

#import <Preferences/PSListController.h>
#import "PSListController+HBTintAdditions.h"

NS_ASSUME_NONNULL_BEGIN

@interface HBListController : PSListController

+ (nullable NSString *)hb_specifierPlist;

+ (nullable UIColor *)hb_tintColor;

+ (nullable UIColor *)hb_navigationBarTintColor;

+ (BOOL)hb_invertedNavigationBar;

+ (BOOL)hb_translucentNavigationBar;

+ (UIColor *)hb_tableViewBackgroundColor;

+ (UIColor *)hb_tableViewCellTextColor;

+ (UIColor *)hb_tableViewCellBackgroundColor;

+ (UIColor *)hb_tableViewCellSeparatorColor;

+ (UIColor *)hb_tableViewCellSelectionColor;

- (UINavigationController *)realNavigationController;

@end

NS_ASSUME_NONNULL_END
