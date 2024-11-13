//
//  MiraclesViewController.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 9/11/24.
//

#import "MiraclesViewController.h"
#import "MiraclesCellsTableViewCell.h"
#import "ReadMiracleViewController.h"
@interface MiraclesViewController ()

@end

@implementation MiraclesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeTableView];
    
}
-(void) initializeTableView{
    _array = [[NSMutableArray alloc] init];
    [_array addObject:@"1. Θεραπεία της καρκινοπαθούς γυναίκας"];
    [_array addObject:@"2. Η θεραπεία του παράλυτου άντρα"];
    [_array addObject:@"3. Η απομάκρυνση του φιδιού από το Μοναστήρι"];
    [_array addObject:@"4. Η θεραπεία του μικρού παιδιού με σοβαρή ασθένεια"];
    [_array addObject:@"5. Η διάσωση του πλοίου από τρικυμία"];
    // Do any additional setup after loading the view.
    [_tableView setDelegate:self];
    [_tableView setDataSource:self];
    [_tableView registerNib:[UINib nibWithNibName:@"MiraclesCellsTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_array count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150.0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MiraclesCellsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSString *getText = [NSString stringWithFormat:@"%@",[_array objectAtIndex:indexPath.row]];
    [[cell lblDescription] setText:getText];
    [[cell btnReadIt] setTag:indexPath.row];
    [[cell btnReadIt] addTarget:self action:@selector(readItClick:)  forControlEvents:UIControlEventTouchDown];
    return cell;
}
-(void) readItClick:(UIButton*) button{
    NSInteger tag = [button tag];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    _read = (ReadMiracleViewController*)[storyboard instantiateViewControllerWithIdentifier:@"ReadMiracleViewController"];
    [_read setModalPresentationStyle:UIModalPresentationFullScreen];
    _read.pageIndex = tag;
    [self presentViewController:_read animated:TRUE completion:nil];
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
