//
//  CenterAboutMeViewController.m
//  WWDC Scholarship 2015
//
//  Created by Ryan D'souza on 4/24/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import "CenterAboutMeViewController.h"
#import "DVOMarqueeView.h"

@interface CenterAboutMeViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *mainScrollView;

@property (strong, nonatomic) IBOutlet UILabel *topNameTitle;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundCoverphoto;

@property (strong, nonatomic) IBOutlet UILabel *biographyNameTitle;
@property (strong, nonatomic) IBOutlet UIImageView *profilePictureView;
@end

@implementation CenterAboutMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *topNameTitle = [[UILabel alloc] init];
    topNameTitle.text = @"Ryan D'souza             2015 WWDC Scholarship App    ";
    topNameTitle.textColor = [UIColor whiteColor];
    topNameTitle.font = self.topNameTitle.font;
    [topNameTitle sizeToFit];
    DVOMarqueeView *labelMarquee = [[DVOMarqueeView alloc] initWithFrame:self.topNameTitle.frame];
    labelMarquee.viewToScroll = topNameTitle;
    [self.topNameTitle removeFromSuperview];
    [self.mainScrollView addSubview:labelMarquee];
    [labelMarquee beginScrolling];
    
    self.profilePictureView.layer.cornerRadius = self.profilePictureView.frame.size.width/2;
    self.profilePictureView.clipsToBounds = YES;
    self.profilePictureView.layer.borderColor = [[UIColor whiteColor] CGColor];
    
    [self boldItalicFontForLabel:self.biographyNameTitle];

}

-(void)boldItalicFontForLabel:(UILabel *)label
{
    UIFont *newFont = [UIFont fontWithName:[NSString stringWithFormat:@"%@-BoldItalic",label.font.fontName] size:label.font.pointSize];
    label.font = newFont;
}


@end
