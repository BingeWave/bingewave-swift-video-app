//
//  CustomWebView.swift
//  BingWave Sample App Swift
//
//  Created by Ayusma on 07/04/2022.
//
import WebKit


class CustomWebView: WKWebView {
    //Change th Auth Token with that of a user
    let AUTH_TOKEN = "xxxxxxx";
    
    override func load(_ request: URLRequest) -> WKNavigation? {
        guard let mutableRequest: NSMutableURLRequest = request as? NSMutableURLRequest else {
            return super.load(request)
        }
        mutableRequest.setValue(AUTH_TOKEN, forHTTPHeaderField: "Authorization")
        return super.load(mutableRequest as URLRequest)
    }
}
