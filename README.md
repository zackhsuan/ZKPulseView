ZKPulseView
===========

Simple iOS UIView Category to create a Pulse (Breathing light) Effect on your needs

<img src="https://s3.amazonaws.com/cocoacontrols_production/uploads/control_image/image/3241/IMG_1589.PNG" width=320 height=568 alt='screenshot' />

## Install
Recommended to use CocoaPos:
<pre>pod 'ZKPulseView', '~> 0.0.1'</pre>

or you can just drag the ZKPulseView.h and ZKPulseView.m into your project and import them before you use it.

## How to Use
Just import ZKPulseView.h in you view controllers
for any view you want to do pulse, you can use the following methods

<pre>
//Start to pulse by using default color, which is the background color's reversed color

-(void) startPulse;

//Start to pulse by providing needed pulse color.

-(void) startPulseWithColor:(UIColor *)color;

//The must underneeth method to create the pulse effect, you can use that for your own purposes

-(void) startPulseWithColor:(UIColor *)color offset:(CGSize) offset frequency:(CGFloat) freq;

to stop the pulse effect, just by calling:

-(void) stopPulseEffect;
</pre>

## License

MIT
