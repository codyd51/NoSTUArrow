%hook SBFGlintyStringView
-(int)chevronStyle {  
    return 0;
    return %orig;
}
 -(void)setChevronStyle:(int) style {
    style = 0;
    %orig(style);
}
%end
%hook _UIGlintyStringView
- (id)chevron {
    return nil;
}
%end