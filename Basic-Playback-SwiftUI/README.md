# tvOS Reference Apps - THEO Basic Playback (SwiftUI)

The purpose of this app is to demonstrate how to integrate [THEOplayer] into an tvOS app using SwiftUI and playback a HLS stream.

For quick start, please proceed with the [Quick Start](https://docs.theoplayer.com/getting-started/01-sdks/05-tvos/00-getting-started.md) guide.

## Quick Start

1. Using the terminal, navigate to the directory where Podfile is located  is located and run:

       pod install --repo-update

      &emsp;
   Please keep in mind [the included features](https://github.com/THEOplayer/theoplayer-sdk-ios#included-features) on the Cocoapods releases. If you want to use any features other than these, you need to create a custom THEOplayer tvOS SDK framework from THEOportal with the features you wish and embed the framework in your project instead of using Cocoapods.
      &emsp;
2. On player's configuration, replace the placeholder `your_license_here` with your license for tvOS SDK.
      ```swift
    init(){
        self.playerConfig = THEOplayerConfiguration(license: "your_license_here", pip: PiPConfiguration())
        self.player = THEOplayer(configuration: self.playerConfig)
    }
    ```

      If you don't have a license yet, please visit [THEOportal Getting Started](https://portal.theoplayer.com/getting-started) page.
      &emsp;
3. Open the project `.xcworkspace`, select a Development Team for signing and build it.

## License

This project is licensed under the BSD 3 Clause License - see the [LICENSE] file for details.

[//]: # (Project files reference)
[LICENSE]: LICENSE
