//
//  FdVC.m
//  FoldableTable
//
//  Created by Joseph.Tsai on 2017/11/3.
//  Copyright © 2017年 Joseph.Tsai. All rights reserved.
//

#import "FdVC.h"

@interface FdVC ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation FdVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - collectionView data source
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
}


#pragma mark - collectionView delegate
@end
