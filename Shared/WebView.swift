//
//  WebView.swift
//  BingWave Sample App Swift
//
//  Created by Ayusma on 07/04/2022.
//

import SwiftUI
import WebKit

struct SwiftUIWebView: UIViewRepresentable {

    let url: URL?

    func makeUIView(context: Context) -> CustomWebView {
        //Preferences
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        
        //Create a congif
        let config =  WKWebViewConfiguration()
        
        //Add
        config.defaultWebpagePreferences = prefs
        
        config.mediaPlaybackRequiresUserAction = false
        config.allowsInlineMediaPlayback = true
        
        return CustomWebView(
            frame: .zero,
            configuration: config
        )
    }
        
    
    func updateUIView(_ uiView: CustomWebView, context: Context) {
        guard let myURL = url else {
            return
            
        }
        let request =  URLRequest (url: myURL)
        uiView.load(request)
    }
    
    
        
}
        
        
        





 






