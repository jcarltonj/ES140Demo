//
//  ViewController.m
//  ES140Demo
//
//  Created by Carlton Jester on 8/26/14.
//  Copyright (c) 2014 Fanzone, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webview;

@end

@implementation ViewController

#pragma mark - GoTos
-(void) goToGoogle
{
    [self goToURLWithString:@"http://google.com"];
}
-(void) goToFacebook
{
    [self goToURLWithString:@"http://facebook.com"];
}
-(void) goToURLWithString: (NSString *) urlString
{
    NSURL * url = [NSURL URLWithString:urlString];
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest: urlRequest];
}

#pragma mark - Setup
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self goToGoogle];
}

- (IBAction)googleButtonPushed:(UIBarButtonItem*)sender {
    [self goToGoogle];
}
- (IBAction)facebookButtonPushed:(UIBarButtonItem *)sender {
    [self goToFacebook];
}
- (IBAction)backButtonPushed:(UIBarButtonItem *)sender {
    [self.webview goBack];
}


@end
