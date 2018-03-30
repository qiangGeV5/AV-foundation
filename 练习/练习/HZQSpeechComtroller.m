//
//  HZQSpeechComtroller.m
//  练习
//
//  Created by 胡志强 on 2018/3/30.
//  Copyright © 2018年 胡志强. All rights reserved.
//

#import "HZQSpeechComtroller.h"

@interface HZQSpeechComtroller()<AVSpeechSynthesizerDelegate>

@property (strong,nonatomic)AVSpeechSynthesizer* synthesizer;
@property (strong,nonatomic)NSArray* voices;
@property (strong,nonatomic)NSArray* speechStings;

@end

@implementation HZQSpeechComtroller

+(instancetype)speechController{
    return [[self alloc] init];
}

- (id)init{
    self = [super init];
    if (self) {
        _synthesizer = [[AVSpeechSynthesizer alloc] init];
        _synthesizer.delegate = self;
        _voices = @[[AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"],[AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"]];
        _speechStings = [self buildSpeechStings];
    }
    return self;
}

- (NSArray*)buildSpeechStings{
    return @[
              @"Hello",
              @"我是个菜鸟，希望大家多多支持，每个案例我都会附上demo，如有问题可以评论，我会及时修改",
              ];
}


- (void)beginConversation{
    for (int i = 0; i<self.speechStings.count;i++) {
        AVSpeechUtterance * utterance = [[AVSpeechUtterance alloc] initWithString:self.speechStings[i]];
        utterance.voice = self.voices[i%2];
        utterance.rate = 0.4f;
        utterance.pitchMultiplier = 0.8f;
        utterance.postUtteranceDelay = 1.0f;
        [self.synthesizer speakUtterance:utterance];
    }
}

@end
