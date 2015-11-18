/*
 Copyright 2015 OpenMarket Ltd
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "RoomExtraInfosInfoView.h"

@implementation RoomExtraInfosInfoView

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([RoomExtraInfosInfoView class])
                          bundle:[NSBundle bundleForClass:[RoomExtraInfosInfoView class]]];
}

+ (instancetype)roomExtraInfoView
{
    if ([[self class] nib])
    {
        return [[[self class] nib] instantiateWithOwner:nil options:nil].firstObject;
    }
    else
    {
        return [[self alloc] init];
    }
}

- (CGFloat)height
{
    return self.mainHeightConstraint.constant;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // Remove default toolbar background color
    self.backgroundColor = [UIColor whiteColor];
}
@end
