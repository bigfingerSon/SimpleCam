//
//  SCVideoResultViewController+UI.m
//  SimpleCam
//
//  Created by Lyman Li on 2019/5/18.
//  Copyright © 2019年 Lyman Li. All rights reserved.
//

#import "SCVideoResultViewController+Private.h"
#import "SCVideoResultViewController+UI.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation SCVideoResultViewController (UI)

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupPlayerContainerView];
    [self setupConfirmButton];
    [self setupBackButton];
}

- (void)setupPlayerContainerView {
    self.playerContainerView = [[UIView alloc] init];
    [self.view addSubview:self.playerContainerView];
    [self.playerContainerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (void)setupConfirmButton {
    self.confirmButton = [[UIButton alloc] init];
    self.confirmButton.backgroundColor = [UIColor blueColor];
    [self.confirmButton addTarget:self action:@selector(confirmAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.confirmButton];
    [self.confirmButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(80, 80));
        make.centerX.equalTo(self.view);
        if (@available(iOS 11.0, *)) {
            make.bottom.mas_equalTo(self.view.mas_safeAreaLayoutGuideBottom).offset(-40);
        } else {
            make.bottom.mas_equalTo(self.view.mas_bottom).offset(-40);
        }
    }];
}

- (void)setupBackButton {
    self.backButton = [[UIButton alloc] init];
    self.backButton.backgroundColor = [UIColor blueColor];
    [self.backButton addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.backButton];
    [self.backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerY.equalTo(self.confirmButton);
        make.right.equalTo(self.confirmButton.mas_left).offset(-30);
    }];
}

@end

#pragma clang diagnostic pop
