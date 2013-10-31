//
//  Question.m
//  kiptalk
//
//  Created by Armuro on 10/26/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTQuestion.h"

@implementation KTQuestion

-(int) countExpression{
    
    if (!self.expressions){
        return 0;
    }else{
        return (int)[self.expressions count];
    }
    
}

-(void) addExpression:(KTExpression *)expression{
    
}



@end
