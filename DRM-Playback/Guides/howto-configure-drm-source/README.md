# THEOplayer How To's - Configure DRM Source

THEOplayer tvOS SDK provides support to different [FairPlay Streaming] integration. This guide is going to cover the steps to configure a source description with an [EZ DRM] FairPlay stream.

The complete implementation can be found in [EzdrmDRMIntegration.swift] with inline comments. The following sub-sections only highlight the key points.

## Table of Contents

* [Creating EZDRM Configuration]
* [Creating Source Description with DRM Configuration]
* [Summary]

## Creating EZDRM Configuration

Create a custom `EzdrmDRMIntegration` Class in `EzdrmDRMIntegration.swift` file, which inherits the custom ContentProtectionIntegration from `THEOplayerSDK`.  

```swift
class EzdrmDRMIntegration: ContentProtectionIntegration {
    static let integrationID = "EzdrmDRMIntegration"

    func extractFairplayContentId(skdUrl: String) -> String {
        let arr = skdUrl.components(separatedBy: ";")
        let skd = arr[arr.count - 1]
        return skd
    }

    func onCertificateRequest(request: CertificateRequest, callback: CertificateRequestCallback) {
        callback.request(request: request)
    }

    func onCertificateResponse(response: CertificateResponse, callback: CertificateResponseCallback) {
        callback.respond(certificate: response.body)
    }

    func onLicenseRequest(request: LicenseRequest, callback: LicenseRequestCallback) {
        var urlRequest = URLRequest(url: URL(string: request.url)!)
        urlRequest.httpMethod = "POST"
        urlRequest.httpBody = request.body
        urlRequest.setValue("application/octet-stream", forHTTPHeaderField: "Content-Type")
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let data = data {
                callback.respond(license: data)
            } else {
                callback.error(error: error!)
            }
        }.resume()
    }
}

//Declaring the above class in the ContentProtectionIntegrationFactory
class EzdrmDRMIntegrationFactory: ContentProtectionIntegrationFactory {
    func build(configuration: DRMConfiguration) -> ContentProtectionIntegration {
        return EzdrmDRMIntegration()
    }
```

## Creating Source Description with DRM Configuration

`TypedSource` will be used just as [THEO Basic Playback] except that the `FairPlayDRMConfiguration` will be passed as the `drm` property.

```swift
class PlayerViewController: UIViewController {

    ...

    private var source: SourceDescription {
        // Declare a TypedSource object with a stream URL, type and DRM Configuration
        let typedSource = TypedSource(
            src: videoUrl,
            type: mimeType,
            drm: FairPlayDRMConfiguration(customIntegrationId: EzdrmDRMIntegration.integrationID, licenseAcquisitionURL: licenseURL, certificateURL: certificate)
        )

        // Returns a computed SourceDescription object
        return SourceDescription(source: typedSource, poster: posterUrl)
    }

    ...
}
```

## Summary

Source description with DRM stream has been created successfully. When the `source` property is invoked, the DRM source description will be returned and then played by THEOplayer.

For more guides about THEOplayer please visit [THEO Docs] portal.

[//]: # (Sections reference)
[Creating EZDRM Configuration]: #Creating-EZDRM-Configuration
[Creating Source Description with DRM Configuration]: #Creating-Source-Description-with-DRM-Configuration
[Summary]: #Summary

[//]: # (Links and Guides reference)
[THEO Basic Playback]: https://github.com/THEOplayer/samples-tvos-sdk/tree/master/Basic-Playback
[FairPlay Streaming]: https://developer.apple.com/streaming/fps/
[EZ DRM]: https://www.ezdrm.com/
[THEO Docs]: https://docs.portal.theoplayer.com/

[//]: # (Project files reference)
[EzdrmDRMIntegration.swift]: ../../DRM-Playback/EzdrmDRMIntegration.swift
