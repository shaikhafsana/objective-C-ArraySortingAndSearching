//
//  main.m
//  ASNsArray
//
//  Created by Student P_02 on 16/11/16.
//  Copyright © 2016 Afsana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+SearchandSort.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       int numberOfElements,i;
        NSInteger n;
        NSString *str;
        NSMutableArray *myArray=[[NSMutableArray alloc]init];
        NSLog(@"How many elements you want to enter");
        scanf("%d",&numberOfElements);
        NSLog(@"\nEnter Array elements");
        for(i=0;i<numberOfElements;i++)
        {
            scanf("%ld",&n);
            str=[NSString stringWithFormat:@"%ld",n];//type conversion of integer
            [myArray addObject:str];
            //[myArray addObject:(NSInteger)n];
        }
        //print
     
        for(i=0;i<numberOfElements;i++)
        {
           //NSLog(@"%@",[myArray objectAtIndex:i]);
            //printf("\n\t",[myArray objectAtIndex:i]);
        }
   
        
        int choice,ans;
        do
        {
        NSLog(@"1.Sort an array\n2.Search an element in array");
        NSLog(@"Enter your choice");
        scanf("%d",&choice);
        switch (choice) {
            case 1:
                NSLog(@"Sorted Array");
                [myArray SortArray];
                break;
              
            case 2:
                NSLog(@"Search");
                [myArray SearchArrayElements];
                break;
                
            default:
                NSLog(@"Invalid choice");
                break;
        }
            NSLog(@"Do you want to continue??");
            NSLog(@"1.Yes\n2.No");
            scanf("%d",&ans);
            if(ans==2)
            {
                NSLog(@"Thnaks for using application......");
            }
        }while(ans==1);
    }
    return 0;
}
