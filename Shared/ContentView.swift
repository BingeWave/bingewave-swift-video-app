//
//  ContentView.swift
//  Shared
//
//  Created by Ayusma on 07/04/2022.
//

import SwiftUI


struct ContentView: View {
    //Replace the XXX with the id of the live event
    //This can be replaced with any widget offered
    let BINGWAVE_URL = URL(string:  "https://widgets.bingewave.com/webrtc/xxxxx")
    
    var body: some View {
        NavigationView{
            SwiftUIWebView(url: BINGWAVE_URL)
                .navigationTitle("BingWave Sample App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
