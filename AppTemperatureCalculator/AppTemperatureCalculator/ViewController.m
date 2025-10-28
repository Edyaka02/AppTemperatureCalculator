//
//  ViewController.m
//  AppTemperatureCalculator
//
//  Created by Guest User on 27/10/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)switchConversion:(id)sender {
    if(self.segControl.selectedSegmentIndex == 0){
        // Convierte de fahrenheit a Celsius
        self.enterLabel.text = @"Enter Fahrenheit";
        self.textField.text = @"";
        self.outputLabel.text = @"0 Celsius";
    }
    
    if(self.segControl.selectedSegmentIndex == 0){
        // Convierte de Celsius a Fahrenheit
        self.enterLabel.text = @"Enter Celsius";
        self.textField.text = @"";
        self.outputLabel.text = @"0 Fahrenheit";
    }
}

- (IBAction)convert:(id)sender {
    
}
@end
