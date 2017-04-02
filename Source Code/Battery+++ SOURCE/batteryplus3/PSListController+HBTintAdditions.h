// Happy April Fool's Day 2017! -TheComputerWhisperer

#import <Preferences/PSListController.h>

@class HBAppearanceSettings;

NS_ASSUME_NONNULL_BEGIN

@interface PSListController (HBTintAdditions)

@property (nonatomic, copy, nullable, setter=hb_setAppearanceSettings:) HBAppearanceSettings *hb_appearanceSettings;

@end

NS_ASSUME_NONNULL_END
