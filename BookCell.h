//
//  BookCell.h
//  SecondApp
//
//  Created by admin on 14-3-9.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookModal.h"
#import "RatingView.h"

@interface BookCell : UITableViewCell
{
    UIImageView* _iconView;
    UILabel* _priceLabel;
    UILabel* _publisherLabel;
    UILabel* _bookNameLabel;
    UILabel* _numRatingsLabel;
    RatingView* _ratingView;
    
    BookModal *_book;

}
@property(retain,nonatomic) BookModal *book;

@end
