//
//  ViewController.m
//  练习
//
//  Created by 胡志强 on 2018/3/29.
//  Copyright © 2018年 胡志强. All rights reserved.
//

#import "ViewController.h"
#import "HPPhoto.h"
#import <AVFoundation/AVFoundation.h>
#import "HZQSpeechComtroller.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HZQSpeechComtroller* speechVC = [HZQSpeechComtroller speechController];
    [speechVC beginConversation];
    
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //说话
    AVSpeechSynthesizer* speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    AVSpeechUtterance* utterance = [[AVSpeechUtterance alloc] initWithString:@"speech"];
    [speechSynthesizer speakUtterance:utterance];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
