//
//  ViewController.h
//  AppTemperatureCalculator
//
//  Created by Guest User on 27/10/25.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *enterLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;

- (IBAction)convert:(id)sender;
- (IBAction)switchConversion:(id)sender;

@end

