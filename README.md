ZKPulseView
===========

Simple iOS UIView Category to create a Pulse (Breathing light) Effect on your needs

<img src="https://s3.amazonaws.com/cocoacontrols_production/uploads/control_image/image/3241/IMG_1589.PNG" width=320 height=568 alt='screenshot' />

## Install
Recommended to use CocoaPos:
``` bash
pod 'ZKPulseView', '~> 0.0.3'
```

or you can just drag the ZKPulseView.h and ZKPulseView.m into your project and import them before you use it.

## How to Use
Just import ZKPulseView.h in you view controllers
for any view you want to do pulse, you can use the following methods

```objective-c
//Start to pulse by using default color, which is the background color's reversed color

-(void) startPulse;

//Start to pulse by providing needed pulse color.

-(void) startPulseWithColor:(UIColor *)color;

//The underneeth method to create the pulse effect, you can use that for your own purposes

-(void) startPulseWithColor:(UIColor *)color offset:(CGSize) offset frequency:(CGFloat) freq;

//to check if the animation is active:
-(BOOL) isPulsating

//to stop the pulse effect, just by calling:

-(void) stopPulseEffect;
```

## License

The MIT License (MIT)

Copyright (c) 2014 Zack Chung

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/zackhsuan/zkpulseview/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

