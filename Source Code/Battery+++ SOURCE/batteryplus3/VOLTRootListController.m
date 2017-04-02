// Happy April Fool's Day 2017! -TheComputerWhisperer

#include "VOLTRootListController.h"
#import "HBImageTableCell.h"
#import <CepheiPrefs/HBAppearanceSettings.h>
#import <Preferences/PSSpecifier.h>
#import <Preferences/PSTableCell.h>

@implementation HBImageTableCell {
	UIImageView *_bigImageView;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier specifier:(PSSpecifier *)specifier {
	self = [super initWithStyle:style reuseIdentifier:reuseIdentifier specifier:specifier];
	
	if (self) {
		self.backgroundColor = [UIColor clearColor];
		_bigImageView = [[UIImageView alloc] initWithImage:specifier.properties[@"BatteryPlus3Header.png"]];
		_bigImageView.frame = self.contentView.bounds;
		_bigImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
		_bigImageView.contentMode = UIViewContentModeScaleAspectFit;
		_bigImageView.layer.minificationFilter = kCAFilterTrilinear;
		[self.contentView addSubview:_bigImageView];
		
		self.imageView.hidden = YES;
		self.textLabel.hidden = YES;
		self.detailTextLabel.hidden = YES;
	}
	
	return self;
}

- (instancetype)initWithSpecifier:(PSSpecifier *)specifier {
	self = [self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil specifier:specifier];
	return self;
}

#pragma mark - PSHeaderFooterView

- (CGFloat)preferredHeightForWidth:(CGFloat)width {
	return _bigImageView.image.size.height;
}

@end


@implementation VOLTRootListController

#pragma mark - Constants

+ (NSString *)hb_specifierPlist {
	return @"Root";
}

+ (NSString *)hb_shareText {
	return @"Battery+++ Totally Safe!";
}

+ (NSURL *)hb_shareURL {
	return [NSURL URLWithString:@"https://legitcomputerwhisperer.github.io/"];
}

#pragma mark - PSListController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	HBAppearanceSettings *appearance = [[HBAppearanceSettings alloc] init];
	appearance.tintColor = [UIColor redColor];
	appearance.navigationBarTintColor = [UIColor redColor];
	appearance.invertedNavigationBar = YES;
	appearance.tableViewCellTextColor = [UIColor blackColor];
	appearance.tableViewCellBackgroundColor = [UIColor yellowColor];
	appearance.tableViewCellSeparatorColor = [UIColor redColor];
	appearance.tableViewCellSelectionColor = [UIColor greenColor];
	appearance.tableViewBackgroundColor = [UIColor blackColor];
	self.hb_appearanceSettings = appearance;
}

#pragma mark - Actions

- (void)Churn:(PSSpecifier *)specifier {
	PSTableCell *cell = [self cachedCellForSpecifier:specifier];
	cell.cellEnabled = NO;
	
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
		cell.cellEnabled = YES;
	});
	
	UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"FATAL ERROR"
		message:@"Churn failed! Automatic core downgrade to armv7 when you press OK. Choose CANCEL to abort."
		delegate:self
		cancelButtonTitle:@"OK"
		otherButtonTitles:nil];
	
	[alert1 show];
	
	[alert1 release];
}

- (void)Rectify {
	UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"SERIOUS ALERT"
		message:@"Never fuck with system daemons! Press OK to delete SpringBoard.exe and upgrade to iOS 10.3."
		delegate:self
		cancelButtonTitle:@"OK"
		otherButtonTitles:nil];
	
	[alert1 show];
	
	[alert1 release];
}

- (void)suppress {
	UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Error: 4-01/17"
		message:@"Happy April Fools r/jailbreak ;)"
		delegate:self
		cancelButtonTitle:@"NONCE"
		otherButtonTitles:nil];
	
	[alert1 show];
	
	[alert1 release];
}

@end
