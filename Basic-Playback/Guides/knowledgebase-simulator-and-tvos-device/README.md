# THEO Knowledge Base - Simulator And tvOS Device

iOS application can be executed on simulator or on a tvOS Apple TV device. This guide demonstrates both ways with the simple application created in [THEO Knowledge Base - Simple Application].

Note that while simulator is great for development and quick testing, it is not the same as executing on actual tvOS devices. See [Differences between simulated and physical devices] from Apple document for more detail.

## Simulator

Click on the scheme list in the XCode IDE as follow:

!["Click On Scheme List"][01]

Select one of available simulators. In this demo, `Apple TV 4K (at 1080p)` (the default) will be used.
s
!["Simulators"][02]

Click the `Play` button or `Product > Run` from Xcode menu bar or `⌘ + R` to run the Hello World App in the selected simulator.

!["Run Simulator"][03]

A simulator window will be open and the app will be installed and executed automatically.

!["Simulator Output"][04]

## Summary

This guide covered how to launch application on simulator and tvOS device in depth. Please note that some of THEOplayer features can only be running on physical devices. For example DRM playback etc.

For more guides about THEOplayer please visit [THEO Docs] portal.

[//]: # (Sections reference)
[Prerequisites]: #Prerequisites
[Simulator]: #Simulator
[Simulator for older iOS]: #Simulator-for-older-iOS
[iOS Device]: #iOS-Device
[Sideloading]: #Sideloading
[Summary]: #Summary

[//]: # (Links and Guides reference)
[THEO Knowledge Base - Simple Application]: ../knowledgebase-simple-application/README.md
[Differences between simulated and physical devices]: https://help.apple.com/simulator/mac/current/#/devb0244142d
[TestFlight]: https://developer.apple.com/testflight/
[Firebase]: https://firebase.google.com/docs/app-distribution
[THEO Docs]: https://docs.portal.theoplayer.com/

[//]: # (Images references)
[01]: Images/clickOnSchemeList.png "Click On Scheme List"
[02]: Images/simulators.png "Simulators"
[03]: Images/runSimulator.png "Run Simulator"
[04]: Images/simulatorOutput.png "Simulator Output"
[05]: Images/installOlderSimulators.png "Install Older Simulators"
[06]: Images/olderSimulators.png "Older Simulators"
[07]: Images/device.png "Device"
[08]: Images/deviceSelected.png "Device Selected"
[09]: Images/runAppOnDevice.png "Run App On Device"
[10]: Images/appIdentifierError.png "App Identifier Error"
[11]: Images/xcodePermissionCheck.png "Xcode Permission Check"
[12]: Images/appRunFailure.png "App Run Failure"
[13]: Images/iosDeviceManagement.png "iOS Device Management"
[14]: Images/iosAppleDevelopment.png "iOS Apple Development"
[15]: Images/iosTrustDeveloper.png "iOS Trust Developer"
[16]: Images/iosConfirmTrust.png "iOS Confirm Trust"
[17]: Images/iosDeveloperTrusted.png "iOS Developer Trusted"
