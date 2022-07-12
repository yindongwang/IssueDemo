//
//  ViewController.m
//  TestImage
//
//  Created by Albert Wang on 2022/6/26.
//

#import "ViewController.h"
#import "UIImage+MultiFormat.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"test" style:UIBarButtonItemStylePlain target:self action:@selector(loadImage:)];
    self.navigationItem.rightBarButtonItem = item;
    
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, 400, 400)];
    [self.view addSubview:self.imageView];
}

- (void)loadImage:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"77778be556396754169c81b2930f5c9d857" ofType:@"ai"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    UIImage *image = [UIImage sd_imageWithData:data];
    self.imageView.image = image;
}

@end
