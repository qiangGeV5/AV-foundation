//
//  HZQSpeechComtroller.h
//  练习
//
//  Created by 胡志强 on 2018/3/30.
//  Copyright © 2018年 胡志强. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
@interface HZQSpeechComtroller : NSObject

@property (nonatomic,strong,readonly)AVSpeechSynthesizer* synthesizer;

+ (instancetype)speechController;

- (void)beginConversation;

@end
