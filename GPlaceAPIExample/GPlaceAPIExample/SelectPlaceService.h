//
//  ViewController.h
//  GPlaceAPIExample
//
//  Created by Darshan Patel on 21/07/15.
//  Copyright (c) 2015 Darshan Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectPlaceService : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) IBOutlet UITableView *tblViewService;

@end

