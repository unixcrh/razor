/**
 * Cobub Razor
 *
 * An open source analytics iphone sdk for mobile applications
 *
 * @package		Cobub Razor
 * @author		WBTECH Dev Team
 * @copyright	Copyright (c) 2011 - 2012, NanJing Western Bridge Co.,Ltd.
 * @license		http://www.cobub.com/products/cobub-razor/license
 * @link		http://www.cobub.com/products/cobub-razor/
 * @since		Version 0.1
 * @filesource
 */

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [UMSAgent checkUpdate];
}

- (void)throwNSException
{
    NSException *e = [NSException exceptionWithName:@"Null reference" reason:@"UIKit.framework.Exception" userInfo:nil];
    @throw e;
} 

-(IBAction) login
{
    [UMSAgent postEvent:@"login" label:@"Login" acc:666];
    [self throwNSException];
}

-(IBAction) register
{
    [UMSAgent postEvent:@"register" label:@"Login" acc:888];
}

-(IBAction) startPage
{
    [UMSAgent startTracPage:@"GWTEST"];
}

-(IBAction) endPage
{
    [UMSAgent endTracPage:@"GWTEST"];
}

- (void)viewDidUnload	
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
