//
//  TableViewCell.h
//  TableViewTest
//
//  Created by Said Moustaoui (Étudiant) on 18-03-20.
//  Copyright © 2018 Said Moustaoui (Étudiant). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellTitle;
@property (weak, nonatomic) IBOutlet UILabel *cellDescription;

@end
