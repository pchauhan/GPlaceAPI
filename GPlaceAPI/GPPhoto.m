//
//  GPPhoto.m
//  APIManager
//
//  Created by Darshan Patel on 7/14/15.
//  Copyright (c) 2015 Darshan Patel. All rights reserved.
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 Darshan Patel
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "GPPhoto.h"


@implementation GPPhoto
- (instancetype)initWithAttributes:(NSDictionary *)attributes
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.height =[[attributes valueForKeyPath:@"height"] integerValue];
    self.width =[[attributes valueForKeyPath:@"width"] integerValue];
    self.html_attributions =[attributes valueForKeyPath:@"html_attributions"];
    self.photo_reference =[attributes valueForKeyPath:@"photo_reference"];
    
    self.photo_url =[NSString stringWithFormat:@"%@photo?maxwidth=%d&maxheight=%d&photoreference=%@&key=%@",kAPI_PLACES_URL,[[attributes valueForKeyPath:@"width"] integerValue],[[attributes valueForKeyPath:@"height"] integerValue],[attributes valueForKeyPath:@"photo_reference"],[GPlaceAPISetup sharedInstance].Api_Key];
    
    return self;
}
-(NSString *)getPhotoUrl:(int)maxWidth withHeight:(int)maxHeight
{
     NSString *url =[NSString stringWithFormat:@"%@photo?maxwidth=%d&maxheight=%d&photoreference=%@&key=%@",kAPI_PLACES_URL,maxWidth,maxHeight,self.photo_reference,[GPlaceAPISetup sharedInstance].Api_Key];
    
    return url;
}
@end
