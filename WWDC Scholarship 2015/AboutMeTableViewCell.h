//
//  AboutMeTableViewCell.h
//  WWDC Scholarship 2015
//
//  Created by Ryan D'souza on 4/26/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutMeTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *firstTitleLabel;

@property (strong, nonatomic) IBOutlet UILabel *secondTitleLabel;
@property (strong, nonatomic) IBOutlet UITextView *detailTextView;

@end
