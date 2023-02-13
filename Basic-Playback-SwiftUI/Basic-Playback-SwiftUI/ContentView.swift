//
//  ContentView.swift
//  Basic-Playback-SwiftUI
//
//  Created by Ceyhun on 07/02/2023.
//

import SwiftUI
import THEOplayerSDK

struct THEOplayerWrapper: UIViewRepresentable {
    
    var playerConfig : THEOplayerConfiguration
    var player : THEOplayer
    var listeners: [String: EventListener] = [:]
    
    init(){
        self.playerConfig = THEOplayerConfiguration(license: "your_license_here", pip: PiPConfiguration())
        self.player = THEOplayer(configuration: self.playerConfig)
    }
    
    func setupPlayer() {
        let source = "https://cdn.theoplayer.com/video/elephants-dream/playlist.m3u8"
        let mimeType = "application/x-mpegurl"
        
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width + screenRect.origin.x
        let screenHeight = screenRect.size.height + screenRect.origin.y
        player.frame = CGRect(x: 0, y: 0, width: screenWidth-175, height: screenHeight-100)
        player.source = SourceDescription(source: TypedSource(src: source, type: mimeType))
    }

    func makeUIView(context: Context) -> UIView {
        setupPlayer()
        let playerView = UIView()
        player.addAsSubview(of: playerView)
        return playerView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // make necessary updates
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("THEOplayer SwiftUI Sample")
            Spacer()
            THEOplayerWrapper()
        }
        .padding(.top, -50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
