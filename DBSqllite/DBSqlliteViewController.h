//
//  DBSqlliteViewController.h
//  DBSqllite
//
//  Created by NTL BUSINESS APP on 4/18/14.
//  Copyright (c) 2014 Sqllite. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBSqlliteViewController : UIViewController {
    IBOutlet UITextField *pTxtUserName,*pTxtEmailID,*pTxtPassword;
    NSMutableData *responseData;
}

- (IBAction)fnSubmit:(id)sender;
@end
