//
//  FMRegisterViewController.m
//  FishMan
//
//  Created by Student07 on 16/7/14.
//  Copyright © 2016年 zjw. All rights reserved.
//

#import "FMRegisterViewController.h"
#import "FMLoginViewController.h"
#import "FMMainViewController.h"
@interface FMRegisterViewController ()
@property(nonatomic,strong) UIImageView *backgroundIV;
@property(nonatomic,strong) UIButton *cancelBtn;

@property(nonatomic,strong) UILabel *titleLabel;

@property(nonatomic,strong) UITextField *phoneNumberTF;
@property(nonatomic,strong) UITextField *verificationCodeTF;
@property(nonatomic,strong) UITextField *passwordTF;
@property(nonatomic,strong) UITextField *confirmPasswordTF;

@property(nonatomic,strong) UIButton *loginBtn;
@end

@implementation FMRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.backgroundIV];
    
    [_backgroundIV addSubview:self.cancelBtn];
    [_backgroundIV addSubview:self.titleLabel];
    
    [_backgroundIV addSubview:self.phoneNumberTF];
    [_backgroundIV addSubview:self.verificationCodeTF];
    [_backgroundIV addSubview:self.passwordTF];
    [_backgroundIV addSubview:self.confirmPasswordTF];
    
    [_backgroundIV addSubview:self.loginBtn];

}
#pragma mark - BGImageView getter
//设置背景图
-(UIImageView *)backgroundIV{
    if (!_backgroundIV) {
        _backgroundIV = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
        _backgroundIV.image = [UIImage imageNamed:@"LoginPicture"];
        _backgroundIV.userInteractionEnabled = YES;
    }
    return _backgroundIV;
}
#pragma  mark - TitleLabel getter
-(UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(_backgroundIV.center.x-20, _backgroundIV.center.y-368, 80, 64)
                       ];
        _titleLabel.text = @"注册";
        _titleLabel.font = [UIFont systemFontOfSize:20];
        
    }
    return _titleLabel;
}
#pragma  mark - TextFile getter
-(UITextField *)phoneNumberTF{
    if (!_phoneNumberTF) {
        _phoneNumberTF = [[UITextField alloc]initWithFrame:CGRectMake(18, 120, 378, 54)];
        _phoneNumberTF.borderStyle =UITextBorderStyleRoundedRect;
        _phoneNumberTF.clearButtonMode = UITextFieldViewModeAlways;
        _phoneNumberTF.placeholder = @"手机号";
        //加左图标
        UIImageView *user = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user1"]];
        _phoneNumberTF.leftView = user;
        _phoneNumberTF.leftViewMode = UITextFieldViewModeAlways;
        //加右侧图标
        UIImageView *sendCodeIV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sendCode"]];
        _phoneNumberTF.rightView = sendCodeIV;
        _phoneNumberTF.rightViewMode = UITextFieldViewModeAlways;
    }
    return _phoneNumberTF;
}
-(UITextField *)verificationCodeTF{
    if (!_verificationCodeTF) {
        _verificationCodeTF = [[UITextField alloc]initWithFrame:CGRectMake(_phoneNumberTF.frame.origin.x, _phoneNumberTF.frame.origin.y+80, 378, 54)];
        _verificationCodeTF.placeholder = @"输入手机验证码";
        _verificationCodeTF.borderStyle = UITextBorderStyleRoundedRect;
        _verificationCodeTF.clearButtonMode = UITextFieldViewModeAlways;
        //加左侧图标
        UIImageView *vertificationCodeIV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"code"]];
        _verificationCodeTF.leftView = vertificationCodeIV;
        _verificationCodeTF.leftViewMode = UITextFieldViewModeAlways;
    }
    return _verificationCodeTF;
}

-(UITextField *)passwordTF{
    if (!_passwordTF) {
        _passwordTF = [[UITextField alloc]initWithFrame:CGRectMake(_verificationCodeTF.frame.origin.x, _verificationCodeTF.frame.origin.y+80, 378, 54)];
        _passwordTF.placeholder = @"输入密码";
        _passwordTF.borderStyle = UITextBorderStyleRoundedRect;
        _passwordTF.clearButtonMode = UITextFieldViewModeAlways;
        //加图标
        UIImageView *key = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"key1"]];
        _passwordTF.leftView = key;
        _passwordTF.leftViewMode = UITextFieldViewModeAlways;
        
    }
    return _passwordTF;
}

-(UITextField *)confirmPasswordTF{
    if (!_confirmPasswordTF) {
        _confirmPasswordTF = [[UITextField alloc]initWithFrame:CGRectMake(_passwordTF.frame.origin.x, _passwordTF.frame.origin.y+80, 378, 54)];
        _confirmPasswordTF.placeholder =@"确认密码";
        _confirmPasswordTF.borderStyle = UITextBorderStyleRoundedRect;
        _confirmPasswordTF.clearButtonMode = UITextFieldViewModeAlways;
        //加图标
        UIImageView *key = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"key1"]];
        _confirmPasswordTF.leftView = key;
        _confirmPasswordTF.leftViewMode = UITextFieldViewModeAlways;
        
    }
    
    return _confirmPasswordTF;
}

#pragma  mark - Button getter
-(UIButton *)cancelBtn{
    if (!_cancelBtn) {
        _cancelBtn = [[UIButton alloc]initWithFrame:CGRectMake(10, 10, 60, 44)];
        [_cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_cancelBtn addTarget:self action:@selector(cancelBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cancelBtn;
}
-(UIButton *)loginBtn{
    if (!_loginBtn) {
        _loginBtn = [[UIButton alloc]initWithFrame:CGRectMake(_confirmPasswordTF.frame.origin.x, _confirmPasswordTF.frame.origin.y+100, 378, 54)];
        [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
        _loginBtn.userInteractionEnabled = YES;
        _loginBtn.backgroundColor = [UIColor redColor];
        [_loginBtn addTarget:self action:@selector(loginBtnClick) forControlEvents:UIControlEventTouchUpInside];

           }
    return  _loginBtn;
}
#pragma  mark - CancelBtn 响应事件
-(void)cancelBtnClick{
    FMLoginViewController *loginVC = [[FMLoginViewController alloc]init];
    [self.navigationController pushViewController:loginVC animated:YES];
}
#pragma  mark - LoginBtn 响应事件
-(void)loginBtnClick{
    FMMainViewController *mainVC = [[FMMainViewController alloc]init];
    [self.navigationController pushViewController:mainVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
