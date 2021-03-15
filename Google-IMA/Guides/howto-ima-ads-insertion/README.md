# THEOplayer How To's - Ads Insertion with Google IMA

This guide is going to cover the steps to insert ads to the HLS stream to [THEO Basic Playback] using Google IMA module.

The complete implementation can be found in [ViewController.swift] with inline comments. The following sub-sections only highlight the key points.

## Table of Contents

* [Enabling Google IMA]
* [Google IMA Ad Description]
* [Creating SourceDescription With Ads]
* [Ads Event Listeners]
* [Summary]

## Include the Google IMA SDK

You must include the Google IMA tvOS SDK in your project as this is a mandatory dependency.

* Download the Google IMA tvOS SDK from [https://developers.google.com/interactive-media-ads/docs/sdks/tvos/client-side/download](https://developers.google.com/interactive-media-ads/docs/sdks/tvos/client-side/download).
* Add the downloaded framework to your `Google-IMA` folder.
* Ensure that the framework is included in the `General` tab of Xcode, under `Frameworks, Libraries, and Embedded Content`.

Alternatively, you can use Cocoapods to include the Google IMA tvOS SDK, as described at [https://developers.google.com/interactive-media-ads/docs/sdks/tvos/client-side#2_add_the_ima_sdk_to_the_xcode_project](https://developers.google.com/interactive-media-ads/docs/sdks/tvos/client-side#2_add_the_ima_sdk_to_the_xcode_project).

## Enabling Google IMA

The code snippet shows how to enable native Google IMA during THEOplayer initialisation.

Simply create a `THEOplayerConfiguration` object with `AdsConfiguration` and pass this player configuration object to the `THEOplayer` constructor as follows:

```swift
class PlayerViewController: UIViewController {

    ...

    private func setupTheoplayer() {
        // Instantiate player object with Google AdsConfiguration
        let playerConfig = THEOplayerConfiguration(chromeless: false, ads: AdsConfiguration())
        theoplayer = THEOplayer(with: self.theoplayerView.bounds, configuration: playerConfig)

        ...
    }

    ...
}
```

## Google IMA Ad Description

In order to make use of the Google IMA module, `GoogleImaAdDescription` which confronts to the `AdDescription` protocol shall be used to describe a given ads.

`GoogleImaAdDescription` expects the following initialization parameters:

* **`src`** - URL to the VAST, VMAP or VPAID XML file.
* **`timeOffset`** - an optional VAST only parameter that specifies when the ad should be played. Support `start`, `end` and percentage (e.g. `10%`)

`GoogleImaAdDescription` is ads type agnostic hence it can be used to create `AdDescription` for all ads.


## Creating SourceDescription With Ads

The `SourceDescription` expects an array of `AdDescription` to be passed to its `ads` parameter, therefore an `AdDescription` array is created in [ViewController.swift] before the `SourceDescription` computed property returns.

```swift
class PlayerViewController: UIViewController {

    ...

    private var source: SourceDescription {

        ...

        // VAST/VMAP - Pre, mid or post-roll
        let imaTag = "https://pubads.g.doubleclick.net/xxxx"
        
        // Returns a computed SourceDescription object with ads descriptor
        return SourceDescription(source: typedSource, ads: [GoogleImaAdDescription(src: imaTag)], poster: posterUrl)
    }

    ...
}
```

## Ads Event Listeners

The code snippet demonstrates how to add and remove listen to the `AD_BEGIN`, `AD_END` and `AD_ERROR` events. See `THEOplayer iOS SDK` documentation for more information.

```swift
class PlayerViewController: UIViewController {

    ...

    private func attachEventListeners() {

        ...

        listeners["adBegin"] = theoplayer.ads.addEventListener(type: AdsEventTypes.AD_BEGIN, listener: onAdBegin)
        listeners["adEnd"] = theoplayer.ads.addEventListener(type: AdsEventTypes.AD_END, listener: onAdEnd)
        listeners["adError"] = theoplayer.ads.addEventListener(type: AdsEventTypes.AD_ERROR, listener: onAdError)
    }

    private func removeEventListeners() {

        ...

        theoplayer.ads.removeEventListener(type: AdsEventTypes.AD_BEGIN, listener: listeners["adBegin"]!)
        theoplayer.ads.removeEventListener(type: AdsEventTypes.AD_END, listener: listeners["adEnd"]!)
        theoplayer.ads.removeEventListener(type: AdsEventTypes.AD_ERROR, listener: listeners["adError"]!)

        ...
    }

    ...

    private func onAdBegin(event: AdBeginEvent) {
        os_log("AD_BEGIN event, adId: %@", event.ad?.id ?? "nil")
    }

    private func onAdEnd(event: AdEndEvent) {
        os_log("AD_END event, adId: %@", event.ad?.id ?? "nil")
    }

    private func onAdError(event: AdErrorEvent) {
        os_log("AD_ERROR event, adId: %@, error: %@", event.ad?.id ?? "nil", event.error ?? "nil")
    }
}
```

## Summary

This guide has covered how to enable Google IMA in THEOplayer and use Google IMA module to instantiate ads object to pass to the source description. When the `source` property is invoked, the ads inserted source description will be returned and then played by THEOplayer.

For more guides about THEOplayer please visit [THEO Docs] portal.

[//]: # (Sections reference)
[Enabling Google IMA]: #Enabling-Google-IMA
[Google IMA Ad Description]: #Google-IMA-Ad-Description
[Creating SourceDescription With Ads]: #Creating-SourceDescription-With-Ads
[Ads Event Listeners]: #Ads-Event-Listeners
[Summary]: #Summary

[//]: # (Links and Guides reference)
[THEO Basic Playback]: https://github.com/THEOplayer/samples-tvos-sdk/tree/master/Basic-Playback
[THEO Docs]: https://docs.portal.theoplayer.com/

[//]: # (Project files reference)
[ViewController.swift]: ../../Google-IMA/ViewController.swift
