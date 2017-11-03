//
//  fdData.m
//  FoldableTable
//
//  Created by Joseph.Tsai on 2017/11/3.
//  Copyright © 2017年 Joseph.Tsai. All rights reserved.
//

#import "fdData.h"

@implementation fdData
{
    NSMutableArray *nikes;
    NSMutableArray *adidas;
    NSMutableArray *rickOwens;
    NSMutableArray *totalData;
}


-(instancetype)init{

    nikes = [[NSMutableArray alloc]init];
    [nikes addObject:@""];
    [nikes addObject:@""];
    [nikes addObject:@""];
    [nikes addObject:@""];
    [nikes addObject:@""];
    
    adidas = [[NSMutableArray alloc]init];
    [adidas addObject:@""];
    [adidas addObject:@""];

    rickOwens = [[NSMutableArray alloc]init];
    totalData = [[NSMutableArray alloc]init];
    
    [totalData addObject:nikes];
    [totalData addObject:adidas];
    [totalData addObject:rickOwens];
    
    return self;
    
}


-(NSMutableArray*)getTotalData{
    return totalData;
}

@end
