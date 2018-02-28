# SafeAreaDemo
Sample code and storyboard for interacting with safe areas in iOS 11, as built during the February 2018 [CocoaHeads Phoenix meetup](https://www.meetup.com/Cocoaheads-Phoenix-Scottsdale/).

This sample project focuses mainly on interacting with the safe area via storyboards. It consists of three tabs:

1. The first tab simply has labels constrained to each edge of the safe area.
2. The second tab shows a table view which respects the safe area while still supporting translucency. The core concept is that the view of your view controller should fill the available space in the superview, but should lay out its content within the bounds of the safe area.
3. The third tab insets the safe area to account for a toolbar above the tab bar, while embedding the same table view controller from the second tab.