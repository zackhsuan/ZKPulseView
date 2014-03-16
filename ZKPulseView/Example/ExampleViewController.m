//
//  ExampleViewController.m
//  ZKPulseView
//
//  Created by zackhsuan on 16/03/2014.
//  Copyright (c) 2014 zzk. All rights reserved.
//

#import "ExampleViewController.h"

@interface ExampleViewController ()

@property (weak, nonatomic) IBOutlet UIView *alwaysOnView;
@property (weak, nonatomic) IBOutlet UIView *roundedView;
@property (weak, nonatomic) IBOutlet UIView *roundView;

@end

@implementation ExampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.roundedView.layer.cornerRadius = 5;
    self.roundView.layer.cornerRadius = 45;
    [self.alwaysOnView startPulse];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startPressed:(id)sender {
    [self.roundedView startPulseWithColor:[UIColor whiteColor] offset:CGSizeMake(2.0, 4.0) frequency:1];
    [self.roundView startPulseWithColor:[UIColor yellowColor]];
}

- (IBAction)stopPressed:(id)sender {
    [self.roundView stopPulseEffect];
    [self.roundedView stopPulseEffect];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
