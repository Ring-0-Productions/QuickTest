#import <Cocoa/Cocoa.h>
int main ()
{
    [NSAutoreleasePool new];
    [NSApplication sharedApplication];
    
    id menubar = [NSMenu new];
    id appMenuItem = [NSMenuItem new];
    [menubar addItem:appMenuItem];
    [NSApp setMainMenu:menubar];

    id appMenu = [NSMenu new];
    id appName = @"Testing Objective-C";
    id quitTitle = [@"Quit " stringByAppendingString:appName];
    id quitMenuItem = [[NSMenuItem alloc] initWithTitle:quitTitle
        action:@selector(terminate:) keyEquivalent:@"q"];
        
    [appMenu addItem:quitMenuItem];
    [appMenuItem setSubmenu:appMenu];

    id window = [[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 640, 480)
        styleMask:NSTitledWindowMask backing:NSBackingStoreBuffered defer:NO];
    
    [window cascadeTopLeftFromPoint:NSMakePoint(0,0)];
    [window setTitle:appName];
    [window makeKeyAndOrderFront:nil];

    [NSApp activateIgnoringOtherApps:YES];
    [NSApp run];
    return 0;
}