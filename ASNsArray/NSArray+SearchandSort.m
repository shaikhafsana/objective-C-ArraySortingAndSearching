//
//  NSArray+SearchandSort.m
//  ASNsArray
//
//  Created by Student P_02 on 17/11/16.
//  Copyright © 2016 Afsana. All rights reserved.
//

#import "NSArray+SearchandSort.h"

@implementation NSArray (SearchandSort)
-(NSArray *)SortArray
{
    NSMutableArray *array=self;
    int i,j;
    NSLog(@"Array=%@",array);
       NSInteger myCount=[array count];
    
  for (i=0; i<myCount;i++) {
        for (j=i+1; j<myCount; j++) {
            if ([array objectAtIndex:i]>[array objectAtIndex:j]) {
               [array exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
   NSLog(@"%@",array);
    return array;
}
//searching fuction
-(NSArray *)SearchArrayElements
{
    NSMutableArray *array=self;
    int i;
    int element;
    NSLog(@"Array=%@",array);
    NSInteger myCount=[array count];
    NSLog(@"Enter the element to be search");
    scanf("%d",&element);
    
    for(i=0;i<myCount;i++)
    {
        if (element==[[array objectAtIndex:i]integerValue]) {
            
            NSLog(@"Element is  present in array.....");
            break;
        }
        
    }
    if(i==myCount){
        NSLog(@"Element is not present in array.....");
    }
    
    return array;
}
@end
