# tvOS Reference Apps - THEO Basic Playback

The purpose of this app is to demonstrate how to integrate [THEOplayer] into an tvOS app and playback a HLS stream.

For quick start, please proceed with the [Quick Start](https://docs.theoplayer.com/getting-started/01-sdks/05-tvos/00-getting-started.md) guide.

## Guides

The guides below will provide in depth details on how to create an tvOS application with **`THEOplayer SDK`**. This includes setting up Xcode, creating the reference application project, integrating and launching THEOplayer on tvOS.

* [THEO Knowledge Base - Xcode Setup]
* [THEO Knowledge Base - Simple Application]
* [THEO Knowledge Base - Simulator And tvOS Device]
* [THEOplayer How To's - Setup Reference Application]
* [THEOplayer How To's - THEOplayer tvOS SDK Integration]

## Quick Start

* Obtain THEOplayer tvOS SDK. If you don't have a SDK yet, please visit [Get Started with THEOplayer].
* Extract the downloaded **`tvOSSDK-[version]-[name].zip`**. For example:

      unzip tvOSSDK-[version]-[name].zip

* Copy & paste the **`THEOplayerSDK.framework`** folder to the root of the reference app project. For example:

      cp -a THEOplayerSDK.framework/ Basic-Playback/

* Open the reference app project `Basic_Playback.xcodeproj` with Xcode.
* Select `Product > Run` from Xcode menu bar or press `⌘ + R` on the keyboard to build and run the application.
  * Should there be any problems with launching the application, please check the [THEO Knowledge Base - Simulator And tvOS Device] guide for more information.

## Streams/Content Rights

The DRM streams used in this app (if any) are provided by our Partner: [EZ DRM] and hold all the rights for the content. These streams are DRM protected and cannot be used for any other purposes.

## License

This project is licensed under the BSD 3 Clause License - see the [LICENSE] file for details.

[//]: # (Links and Guides reference)
[THEO Knowledge Base - Xcode Setup]: Guides/knowledgebase-xcode-setup/README.md
[THEO Knowledge Base - Simple Application]: Guides/knowledgebase-simple-application/README.md
[THEO Knowledge Base - Simulator And tvOS Device]: Guides/knowledgebase-simulator-and-ios-device/README.md
[THEOplayer How To's - THEOplayer tvOS SDK Integration]: Guides/howto-theoplayer-ios-sdk-integration/README.md
[THEOplayer]: https://www.theoplayer.com
[Get Started with THEOplayer]: https://www.theoplayer.com/licensing
[EZ DRM]: https://www.ezdrm.com/

[//]: # (Project files reference)
[LICENSE]: LICENSE
