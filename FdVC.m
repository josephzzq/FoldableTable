//
//  FdVC.m
//  FoldableTable
//
//  Created by Joseph.Tsai on 2017/11/3.
//  Copyright © 2017年 Joseph.Tsai. All rights reserved.
//

#import "FdVC.h"
#import "fdData.h"
#import "FdCollectionViewCell.h"

@interface FdVC ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) fdData *fdDataObj;
@property (strong, nonatomic) NSMutableArray *totalData;

@end

@implementation FdVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.fdDataObj = [[fdData alloc]init];
    self.totalData = [[NSMutableArray alloc]init];
    self.totalData = [self.fdDataObj getTotalData];
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"FdCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"fdCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - collectionView data source
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.totalData.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSLog(@"count %ld",[self.totalData[section] count]);
    return [self.totalData[section] count];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identify = @"fdCell";
    FdCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identify forIndexPath:indexPath];
    
    return cell;
}


#pragma mark - collectionView delegate
@end
