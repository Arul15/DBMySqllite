//
//  DBSqlliteViewController.m
//  DBSqllite
//
//  Created by NTL BUSINESS APP on 4/18/14.
//  Copyright (c) 2014 Sqllite. All rights reserved.
//

#import "DBSqlliteViewController.h"

@interface DBSqlliteViewController ()

@end

@implementation DBSqlliteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)fnSubmit:(id)sender {

    responseData = [NSMutableData data];

    NSString *urlRequest =[NSString stringWithFormat:Register,pTxtUserName.text,pTxtEmailID.text,pTxtPassword.text];

    NSLog(@"urlRequest %@",urlRequest);
    
    NSString *pStrLegalURLString =[urlRequest stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];  //Or your String Encoding;

    NSURL *url = [[NSURL alloc] initWithString:pStrLegalURLString];
    
    NSMutableURLRequest *request1 = [NSMutableURLRequest requestWithURL:url];
    [request1 setHTTPMethod:@"POST"];
    
    NSData *returnData1 = [ NSURLConnection sendSynchronousRequest: request1 returningResponse: nil error: nil ];
    NSString *returnString1 = [[NSString alloc] initWithData:returnData1 encoding: NSUTF8StringEncoding];

    NSLog(@"returnString length %d",[returnString1 length]);
    NSLog(@"return String %@",returnString1);
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [pTxtUserName resignFirstResponder];
    [pTxtPassword resignFirstResponder];
    [pTxtEmailID resignFirstResponder];
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [pTxtUserName resignFirstResponder];
    [pTxtPassword resignFirstResponder];
    [pTxtEmailID resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
