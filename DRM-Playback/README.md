# THEOplayer tvOS Reference Apps - THEO DRM Playback

The purpose of this app is to demonstrate how to playback a DRM protected HLS stream with [THEOplayer].

For quick start, please proceed with the [Quick Start](https://docs.theoplayer.com/getting-started/01-sdks/05-tvos/00-getting-started.md) guide.

## Guides

The guides below will provide a detailed explanation about DRM systems followed by instructions on how to configure DRM source for DRM protected streams and play it with THEOplayer.

* [THEO Knowledge Base - DRM Systems]
* [THEOplayer How To's - Configure DRM Source]

This app is an extension of [THEO Basic Playback] application. Please checkout the following guides should any help is needed to get started with Xcode and/or THEOplayer SDK.

* [THEO Knowledge Base - Xcode Setup]
* [THEOplayer How To's - THEOplayer tvOS SDK Integration]

## Quick Start

* Obtain THEOplayer iOS SDK. If you don't have a SDK yet, please visit [Get Started with THEOplayer].
* Extract the downloaded **`tvOSSDK-[version]-[name].zip`**. For example:

      unzip iOSSDK-[version]-[name].zip

* Copy & paste the **`THEOplayerSDK.framework`** folder to the root of the reference app project. For example:

      cp -a THEOplayerSDK.framework/ DRM-Playback/

* Open the reference app project `DRM-Playback.xcodeproj` with Xcode.
* Select `Product > Run` from Xcode menu bar or press `⌘ + R` on the keyboard to build and run the application.
  * Should there be any problems with launching the application, please check the [THEO Knowledge Base - Simulator And iOS Device] guide for more information.

## Streams/Content Rights

The DRM streams used in this app (if any) are provided by our Partner: [EZ DRM] and hold all the rights for the content. These streams are DRM protected and cannot be used for any other purposes.

## License

This project is licensed under the BSD 3 Clause License - see the [LICENSE] file for details.

[//]: # (Links and Guides reference)
[THEO Knowledge Base - DRM Systems]: https://github.com/THEOplayer/samples-drm-integration/blob/master/ios/README.md
[THEOplayer How To's - Configure DRM Source]: Guides/howto-configure-drm-source/README.md
[THEO Basic Playback]: ../Basic-Playback
[THEO Knowledge Base - Xcode Setup]: ../Basic-Playback/Guides/knowledgebase-xcode-setup/README.md
[THEO Knowledge Base - Simulator And tvOS Device]: ../Basic-Playback/Guides/knowledgebase-simulator-and-tvos-device/README.md
[THEOplayer How To's - THEOplayer tvOS SDK Integration]: ../Basic-Playback/Guides/howto-theoplayer-tvos-sdk-integration/README.md
[THEOplayer]: https://www.theoplayer.com
[Get Started with THEOplayer]: https://www.theoplayer.com/licensing
[EZ DRM]: https://www.ezdrm.com/

[//]: # (Project files reference)
[LICENSE]: LICENSE
