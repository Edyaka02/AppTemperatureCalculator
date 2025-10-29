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
    
    if(self.segControl.selectedSegmentIndex == 1){
        // Convierte de Celsius a Fahrenheit
        self.enterLabel.text = @"Enter Celsius";
        self.textField.text = @"";
        self.outputLabel.text = @"0 Fahrenheit";
    }
}

- (IBAction)convert:(id)sender {
    if(self.segControl.selectedSegmentIndex == 0){
        double F = [self.textField.text doubleValue];
        double C = (F - 32) / 1.8;
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f Celsius", C];
        
        // Simular la temperatura en la imagen
        if (C > 120) {
            self.imageView.image = [UIImage imageNamed:@"Temp9"];
        } else if (C > 100) {
            self.imageView.image = [UIImage imageNamed:@"Temp8"];
        } else if (C > 80) {
            self.imageView.image = [UIImage imageNamed:@"Temp7"];
        } else if (C > 60) {
            self.imageView.image = [UIImage imageNamed:@"Temp6"];
        } else if (C > 40) {
            self.imageView.image = [UIImage imageNamed:@"Temp5"];
        } else if (C > 20) {
            self.imageView.image = [UIImage imageNamed:@"Temp4"];
        } else if (C > 0) {
            self.imageView.image = [UIImage imageNamed:@"Temp3"];
        } else if (C > -10) {
            self.imageView.image = [UIImage imageNamed:@"Temp2"];
        } else if (C > -20) {
            self.imageView.image = [UIImage imageNamed:@"Temp1"];
        }
    } else {
        double C = [self.textField.text doubleValue];
        double F = C * 1.8 + 32;
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f Fahrenheit", F];
        // Simular la temperatura en la imagen
        if (F > 180) {
            self.imageView.image = [UIImage imageNamed:@"Temp9"];
        } else if (F > 160) {
            self.imageView.image = [UIImage imageNamed:@"Temp8"];
        } else if (F > 140) {
            self.imageView.image = [UIImage imageNamed:@"Temp7"];
        } else if (F > 120) {
            self.imageView.image = [UIImage imageNamed:@"Temp6"];
        } else if (F > 100) {
            self.imageView.image = [UIImage imageNamed:@"Temp5"];
        } else if (F > 80) {
            self.imageView.image = [UIImage imageNamed:@"Temp4"];
        } else if (F > 60) {
            self.imageView.image = [UIImage imageNamed:@"Temp3"];
        } else if (F > 40) {
            self.imageView.image = [UIImage imageNamed:@"Temp2"];
        } else if (F <= 40) {
            self.imageView.image = [UIImage imageNamed:@"Temp1"];
        }
    }
}
@end
