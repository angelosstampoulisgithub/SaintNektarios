//
//  Multimedia.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 10/11/24.
//
#import "ImageIO/CGImageAnimation.h"
#import "Multimedia.h"
#import "PageViewController.h"
#import "MultimediaCell.h"
#import "VideoPlayer.h"
@interface Multimedia ()

@end

@implementation Multimedia

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self->_array = [[NSMutableArray alloc] init];
    [self->_array addObject:@"Φωτογραφικό Υλικό"];
    [self->_array addObject:@"Βιβλία-Εκδόσεις"];
    [self->_array addObject:@"Απολυτίκιο Αγίου Νεκταρίου"];
    [self->_array addObject:@"Υμνος στην Παναγία"];
    [self->_multimedia setDelegate:self];
    [self->_multimedia setDataSource:self];
    [self->_multimedia registerNib:[UINib nibWithNibName:@"MultimediaCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    [self->_multimedia reloadData];
    
 
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_array count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120.0;
}
-(void) openPageViewController:(NSInteger) index{
    if(index==0){
            UIStoryboard *board;

            if (!self.storyboard)
            {
                board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            }
            else
            {
                board = self.storyboard;
            }

            PageViewController *view = [board instantiateViewControllerWithIdentifier:@"PageViewController"];
            [self.navigationController pushViewController:view animated:YES];

    }
    if(index==1){
        UIStoryboard *board;

        if (!self.storyboard)
        {
            board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        }
        else
        {
            board = self.storyboard;
        }

        BooksViewController *view = [board instantiateViewControllerWithIdentifier:@"BooksViewController"];
        [self.navigationController pushViewController:view animated:YES];

    }
    
    if(index==2){
        UIStoryboard *board;

        if (!self.storyboard)
        {
            board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        }
        else
        {
            board = self.storyboard;
        }

        VideoPlayer *view = [board instantiateViewControllerWithIdentifier:@"VideoPlayer"];
        view.index = 0;
        [self.navigationController pushViewController:view animated:YES];

    }
    
    if(index==3){
        UIStoryboard *board;

        if (!self.storyboard)
        {
            board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        }
        else
        {
            board = self.storyboard;
        }

        VideoPlayer *view = [board instantiateViewControllerWithIdentifier:@"VideoPlayer"];
        view.index = 1;
        [self.navigationController pushViewController:view animated:YES];



    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MultimediaCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSString *getText = [NSString stringWithFormat:@"%@",[_array objectAtIndex:indexPath.row]];

    [[cell lblDescription] setText:getText];
    [[cell btnPlay] addTarget:self action:@selector(playClick:)  forControlEvents:UIControlEventTouchDown];
    [[cell btnPlay] setTag:indexPath.row];

    return cell;
}
-(void) playClick:(UIButton*) button{
    NSInteger tag = [button tag];
    [self openPageViewController:tag];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
