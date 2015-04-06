#import "CounterView.h"
#import "CounterModel.h"

@interface CounterView()

@property (nonatomic,strong) IBOutlet UIButton *incrementButton;
@property (nonatomic,strong) IBOutlet UIButton *decrementButton;

@end

@implementation CounterView


-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    return self;
}

-(void)awakeFromNib
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(viewNeedsUpdate) name:@"ModelDidChange" object:nil];
    self.counters = [CounterModel new];
    [self.counters setName:@"Ustun"];
}

-(void)viewNeedsUpdate
{
    // update widgets and tell myself to draw

    self.incrementButton.enabled = !self.counters.isAtMax;
    self.decrementButton.enabled = !self.counters.isAtMin;
    [self setNeedsDisplay];
}

-(void)drawCounterValue:(int)val inRect:(CGRect)aRect color:(UIColor*)aColor
{
    NSString *s=[NSString stringWithFormat:@"%@, counter has value %d",[self.counters name],val];
    [s drawInRect:aRect withAttributes:@{ NSForegroundColorAttributeName: aColor} ];
}

-(void)drawRect:(CGRect)rect
{
    //  draw stuff not in widgets (could be empty if everything is in widgets)
    
    [self drawCounterValue:[self.counters upCounter] inRect:CGRectMake(155, 110, 246, 170) color:[UIColor blackColor]];
    [self drawCounterValue:[self.counters downCounter] inRect:CGRectMake(15, 290, 246, 170)color:[UIColor redColor]];
 
    [@"2nd representation of counter values" drawInRect:CGRectMake(10, 480, 300, 50) withAttributes:nil];
    
    [[NSString stringWithFormat:@"Your name is: %@",self.counters.name] drawInRect:CGRectMake(10, 500, 300, 50) withAttributes:nil];
    
    [[NSString stringWithFormat:@"Counter 1: %d Counter 2: %d",self.counters.upCounter,self.counters.downCounter] drawInRect:CGRectMake(10, 540, 300, 50) withAttributes:nil];
   

}

//---- actions

- (IBAction)increment:(id)sender {
    [self.counters countUp];
}

- (IBAction)decrement:(id)sender {
    [self.counters countDown];
}


- (IBAction)handleEditingChanged:(id)sender {
    [self.counters setName:[(UITextField*)sender text]];
}



-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
