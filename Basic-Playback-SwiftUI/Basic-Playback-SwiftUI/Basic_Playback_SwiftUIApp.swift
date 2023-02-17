//
//  Basic_Playback_SwiftUIApp.swift
//  Basic-Playback-SwiftUI
//
//  Created by Ceyhun on 07/02/2023.
//

import SwiftUI
import THEOplayerSDK

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            THEOplayer.prepare(withFirstViewController: UIViewController())
            return true
    }
}

@main
struct tvOSTestApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
