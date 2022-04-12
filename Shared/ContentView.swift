//
//  ContentView.swift
//  Shared
//
//  Created by Ayusma on 07/04/2022.
//

import SwiftUI


struct ContentView: View {
    //Interchange with whatever widget you want
    //and replace the XX with the ID
    let BINGWAVE_URL = URL(string:  "https://widgets.bingewave.com/webrtc/xxxxxx")
    
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
