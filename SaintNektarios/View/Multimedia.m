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
    _array = [[NSMutableArray alloc] init];
    [_array addObject:@"Φωτογραφικό Υλικό"];
    [_array addObject:@"Βιβλία-Εκδόσεις"];
    [_array addObject:@"Απολυτίκιο Αγίου Νεκταρίου"];
    [_array addObject:@"Υμνος στην Παναγία"];
    [_multimedia setDelegate:self];
    [_multimedia setDataSource:self];
    [_multimedia registerNib:[UINib nibWithNibName:@"MultimediaCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    // Do any additional setup after loading the view.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_array count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120.0;
}
-(void) openPageViewController:(NSInteger) index{
    if(index==0){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        _read = (PageViewController*)[storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
        [_read setModalPresentationStyle:UIModalPresentationFullScreen];
        [[self navigationController] pushViewController:_read animated:TRUE];
    }
    if(index==1){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        _books = (BooksViewController*)[storyboard instantiateViewControllerWithIdentifier:@"BooksViewController"];
        [_books setModalPresentationStyle:UIModalPresentationFullScreen];
        [[self navigationController] pushViewController:_books animated:TRUE];
    }
    
    if(index==2){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        _videoPlayerApolitikio = (VideoPlayer*)[storyboard instantiateViewControllerWithIdentifier:@"VideoPlayer"];
        [_videoPlayerApolitikio setModalPresentationStyle:UIModalPresentationFullScreen];
        _videoPlayerApolitikio.index = 0;
        [[self navigationController] pushViewController:_videoPlayerApolitikio animated:TRUE];
    }
    
    if(index==3){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        _videoAgni = (VideoPlayer*)[storyboard instantiateViewControllerWithIdentifier:@"VideoPlayer"];
        [_videoAgni setModalPresentationStyle:UIModalPresentationFullScreen];
        _videoAgni.index =1;
        [[self navigationController] pushViewController:_videoAgni animated:TRUE];
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
