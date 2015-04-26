//
//  CenterAboutMeViewController.m
//  WWDC Scholarship 2015
//
//  Created by Ryan D'souza on 4/24/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import "CenterAboutMeViewController.h"

@interface CenterAboutMeViewController ()

@property (strong, nonatomic) IBOutlet UILabel *topNameTitle;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundCoverphoto;

@property (strong, nonatomic) IBOutlet UILabel *biographyNameTitle;
@property (strong, nonatomic) IBOutlet UIImageView *profilePictureView;
@end

@implementation CenterAboutMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
