//
//  FMLoginViewController.m
//  FishMan
//
//  Created by Student07 on 16/7/13.
//  Copyright © 2016年 zjw. All rights reserved.
//

#import "FMLoginViewController.h"
#import "FMRegisterViewController.h"
@interface FMLoginViewController ()
@property(nonatomic,strong) UILabel *titleLabel;
@property(nonatomic,strong) UIImageView *loginIV;

@property(nonatomic,strong) UITextField *userNameTF;
@property(nonatomic,strong) UITextField *passwordTF;

@property(nonatomic,strong) UILabel *forgetPasswordLabel;

@property(nonatomic,strong) UIButton *registerBtn;
@property(nonatomic,strong) UIButton *loginBtn;
@end

@implementation FMLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//     self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.loginIV];
    
    [_loginIV addSubview:self.titleLabel];
    
    [_loginIV addSubview:self.userNameTF];
    [_loginIV addSubview:self.passwordTF];
    
    [_loginIV addSubview:self.forgetPasswordLabel];
    
    [_loginIV addSubview:self.registerBtn];
    [_loginIV addSubview:self.loginBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Label getter
-(UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(_loginIV.center.x-80, _loginIV.center.y-260, 150, 100)];
        _titleLabel.text = @"登录";
        _titleLabel.font = [UIFont systemFontOfSize:40];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.alpha = 50;
        
        
    }
    return  _titleLabel;
}
#pragma  mark - ForgetPasswordLabel
-(UILabel *)forgetPasswordLabel{
    if (!_forgetPasswordLabel) {
        _forgetPasswordLabel = [[UILabel alloc]initWithFrame:CGRectMake(280, 430, 80, 10)];
        _forgetPasswordLabel.text = @"忘记密码？";
        _forgetPasswordLabel.font = [UIFont systemFontOfSize:16];
        _forgetPasswordLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _forgetPasswordLabel;
}

#pragma mark - Image getter
//设置背景图
-(UIImageView *)loginIV{
    if (!_loginIV) {
        _loginIV = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
        _loginIV.image = [UIImage imageNamed:@"LoginPicture"];
        _loginIV.userInteractionEnabled = YES;
    }
    return _loginIV;
}
#pragma  mark - TextFile getter
-(UITextField *)userNameTF{
    if(!_userNameTF){
        
       _userNameTF = [[UITextField alloc]initWithFrame:CGRectMake(40, 250,320, 50)];
       _userNameTF.borderStyle = UITextBorderStyleRoundedRect;
        _userNameTF.clearButtonMode = UITextFieldViewModeAlways;
       _userNameTF.placeholder = @"账户名";
        //加上小人物图标
        UIImageView *user = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user1"]];
        _userNameTF.leftView = user;
        _userNameTF.leftViewMode = UITextFieldViewModeAlways;
    }
    return _userNameTF;
}

-(UITextField *)passwordTF{
    if(!_passwordTF){
        _passwordTF = [[UITextField alloc]initWithFrame:CGRectMake(40, 350, 320, 50)];
        //设置边框
        _passwordTF.borderStyle = UITextBorderStyleRoundedRect;
        //水印
        _passwordTF.placeholder = @"密码";
        //输入框中是否有个叉号，在什么时候显示，用于一次性删除输入框中的内容
        _passwordTF.clearButtonMode = UITextFieldViewModeAlways;
       //输入的内容是密文
        _passwordTF.secureTextEntry = YES;
        //加上钥匙图标图标
        UIImageView *key = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"key1"]];
        _passwordTF.leftView = key;
        _passwordTF.leftViewMode = UITextFieldViewModeAlways;

    }
    return  _passwordTF;
}
#pragma  mark - Button getter
-(UIButton *)registerBtn{
    if (!_registerBtn) {
        _registerBtn = [[UIButton alloc]initWithFrame:CGRectMake(40, 500, 100 ,50)];
        _registerBtn.userInteractionEnabled = YES;
        _registerBtn.backgroundColor = [UIColor blueColor];
        [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
        [_registerBtn addTarget:self action:@selector(registerBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return  _registerBtn;
}
-(UIButton *)loginBtn{
    if (!_loginBtn) {
        _loginBtn = [[UIButton alloc]initWithFrame:CGRectMake(260, 500, 100, 50)];
        _loginBtn.backgroundColor = [UIColor purpleColor];
        _loginBtn.userInteractionEnabled = YES;
        [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
        
    }
    return _loginBtn;
}
#pragma mark registerBtn 响应方法
-(void)registerBtnClick{
    FMRegisterViewController *registerVC = [[FMRegisterViewController alloc]init];
    [self.navigationController pushViewController:registerVC animated:YES];
}

@end
