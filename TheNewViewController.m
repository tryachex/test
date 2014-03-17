//
//  TheNewViewController.m
//  SecondApp
//
//  Created by admin on 14-3-12.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import "TheNewViewController.h"

@interface TheNewViewController ()

@end

@implementation TheNewViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.title = @"打开文件";

    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"new.jpg"]];
    self.title=@"Swich a new book to find another world";
     self.contents=[[NSArray alloc] initWithObjects:nil];
      _searchBookNames=[[NSMutableArray alloc] initWithObjects:nil];
     _bookNames=[[NSMutableArray alloc] initWithObjects:nil];

      NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory,NSUserDomainMask, YES);
      NSString *docPath=[paths objectAtIndex:0];
    NSLog(@"%@",docPath);

     _dir=docPath;
 
   if ([[NSFileManager defaultManager ] fileExistsAtPath:_dir]) {
       if (YES) {
        _contents=[[NSFileManager defaultManager ] contentsOfDirectoryAtPath:_dir error:NULL];
        for (docPath in _contents) {
            [_bookNames addObject:docPath];
        }
    }
}
	
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [_bookNames count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text=[_bookNames objectAtIndex:indexPath.row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */
#pragma  mark-
#pragma  maek Table View Data Source
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TheReadBookViewController *readBook=[[TheReadBookViewController alloc] init];
    NSString *fileName=[_bookNames objectAtIndex:indexPath.section];
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *docPath=[paths objectAtIndex:0];
    NSLog(@"%@",docPath);
    NSString *strDst=[docPath stringByAppendingFormat:@"/%@",fileName];
    readBook.mCurrentKeyWord=strDst;
    readBook.mBookName=fileName;
    [[self navigationController ] pushViewController:readBook animated:YES];
    
    
}




@end
