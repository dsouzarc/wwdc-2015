//
//  CenterAboutMeViewController.m
//  WWDC Scholarship 2015
//
//  Created by Ryan D'souza on 4/24/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import "CenterAboutMeViewController.h"

@interface CenterAboutMeViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *mainScrollView;

@property (strong, nonatomic) IBOutlet UILabel *topNameTitle;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundCoverphoto;
@property (strong, nonatomic) IBOutlet UITextView *codingExperienceTextView;
@property (strong, nonatomic) IBOutlet UITableView *projectsTableView;

@property (strong, nonatomic) IBOutlet UILabel *biographyNameTitle;
@property (strong, nonatomic) IBOutlet UIImageView *profilePictureView;

@property (strong, nonatomic) NSMutableArray *previousProjects;

@end

@implementation CenterAboutMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.projectsTableView registerNib:[UINib nibWithNibName:@"AboutMeTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:aboutMeCellIdentifier];

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
    
    NSMutableString *codingExperience = [[NSMutableString alloc] init];
    [codingExperience appendString:@"<b>2010:</b> Drag and drop programming in middle school to move a robot\n"];
    
    NSAttributedString * attrStr = [[NSAttributedString alloc] initWithData:[codingExperience dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    
    self.codingExperienceTextView.attributedText = attrStr;
    
}

- (void) updatePreviousProjectsArray
{
    AboutMe *project = [[AboutMe alloc] initWithEverything:@"File Manager" title2:@"2011" detail:@"AppleScript: Simplifies my file creation and organization. When the app opens, it prompts for the assignment's title and class (chosen from an array of buttons. Automatically opens a blank document in Microsoft Word, writes name, the current date, the class name, the class period, and the assignment title in bold. It then saves the document in the respective class Dropbox folder with the assignment title as the file name"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"Stock Analyzer" title2:@"2012" detail:@"Java GUI and then Android Application. Parses Nasdaq Exchange to get real-time quote of a stock (as opposed to the 15-minute delay that other apps give). Uses an algorithm I wrote to determine if the stock is over/under-valued based on the company's P/E, Beta, Financial Sheet, Balance Sheet, Income Statement, and historical trading data"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"QEventShare" title2:@"2013" detail:@"First Android Application. Streamlines adding and sharing events by allowing the events to be created/shared via QR Code"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"PHS PowerSchool" title2:@"2014/15" detail:@"Android and then iOS Application. Allows Princeton High School students to view their grades faster by automatically logging them into their account and opening the grades home page. Also calculates both the weighted and unweighted GPA, and has the unique feature of allowing the selection of multiple assignments to be copied to the clipboard (useful for making to-do lists"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"AppSearcher" title2:@"2013" detail:@"Android Application. Brings iOS's native search bar to Android. Shows a list of all the installed apps faster and with less memory than its competition on the Play Store. The searcher can be opened via the notification bar or the chat head, which can be moved around the screen. Apps can be listed by their use or name"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"Shopder" title2:@"2014" detail:@"Android & Google Glass app. User can choose a nearby store and enter their shopping list. Their shopping list is then returned with the aisle number beside each item. The store receives the user's shopping list and can then send targeted advertisements to the shopper Ex. Shopping List Item: 4 boxes of brownie mix. Store Advertisement: Buy 1 dozen eggs, get the 2nd dozen free. Logic: Eggs are needed to make brownies" ];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"Pitch Counter" title2:@"2014" detail:@"Android Application. Because league laws place a maximum limit on the number of pitches a pitcher can pitch, this app allows the coach to keep track of each pitcher's pitches. The number of strikes and balls are also recorded so the coach can sort his pitchers by their ratio and number of pitches"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"Keyboard Scambler" title2:@"2014" detail:@"Android Appliction. Fun game that makes the user type a series of words with a scrambled keyboard. There are four levels (including a Djvorak keyboard) and thousands of possible words (obscure, but legit"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"Pacman" title2:@"2014" detail:@"Java GUI. The classic arcade game written as a GUI in Java. It's my solution to Brown University's CS 015 Final Project"];
    
    project = [[AboutMe alloc] initWithEverything:@"Prom Me" title2:@"2015" detail:@"iOS Application. Nicknamed 'Tinder for prom'. Users can view other people's Facebook profile picture and decide whether they would want to go to prom with them. If two people choose each other, they are notified. Potential prom dates can be filtered by grade, location, high school, and gender"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"Bring Me Food" title2:@"2014/15" detail:@"Android and then iOS app. A refined version of Uber for crowd-sourcing the delivery of food. Client can choose a restaurant, view that restaurant's menu items, choose and customize an item, and then place an order for that item. Drivers will get a notification for the new order, can claim the order, get the order, and then drop it off at the client's address. The driver can post updates to the user along the way, and the user can see the driver's location"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"PHS Lab Days" title2:@"2014/15" detail:@"Java GUI, then Android and then iOS Application. Sends text messages on lab days to students who sign up for it. Currently sends text messages to 11% of the student body on a daily basis"];
    [self.previousProjects addObject:project];
    
    project = [[AboutMe alloc] initWithEverything:@"Facebook Message Analyzer" title2:@"2014/15" detail:@"Android and then iOS Application. Analyzes a user's last 5,000 messages in both group chats private messages. Shows the most often used word, average response time, and average word and sentence length as a function over time (how it changes throughout the day and the week). In group conversations, shows who responds to who the quickest ie. If a girl sends a message, how many guys reply right-away when compared to if a guy sends a message"];
    [self.previousProjects addObject:project];
}

-(void)boldItalicFontForLabel:(UILabel *)label
{
    UIFont *newFont = [UIFont fontWithName:[NSString stringWithFormat:@"%@-BoldItalic",label.font.fontName] size:label.font.pointSize];
    label.font = newFont;
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        self.previousProjects = [[NSMutableArray alloc] init];
        [self updatePreviousProjectsArray];
    }
    
    return self;
}

/****************************/
//    TABLEVIEW DELEGATES
/****************************/

static int selectedProject = -1;
static NSString *aboutMeCellIdentifier = @"AboutMeTableViewCell";

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(tableView == self.projectsTableView) {
        if(indexPath.row == selectedProject) {
            return 130;
        }
        return 40;
    }
    
    return 10;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView == self.projectsTableView) {
        
        return self.previousProjects.count;
    }
    
    return 0;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AboutMeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:aboutMeCellIdentifier];
    
    if(!cell) {
        cell = [[AboutMeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:aboutMeCellIdentifier];
    }
    
    AboutMe *aboutMe = (AboutMe*)self.previousProjects[indexPath.row];
    
    cell.firstTitleLabel.text = aboutMe.title1;
    cell.firstTitleLabel.adjustsFontSizeToFitWidth = YES;
    cell.secondTitleLabel.text = aboutMe.title2;
    cell.detailTextView.text = aboutMe.detail;
    
    CGRect tempFrame = cell.detailTextView.frame;
    tempFrame.size = cell.detailTextView.contentSize;
    cell.detailTextView.frame = tempFrame;
    cell.detailTextView.hidden = !(selectedProject == indexPath.row);
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(tableView == self.projectsTableView) {
        selectedProject = (int)indexPath.row;
        [self.projectsTableView reloadData];
    }
}

@end
