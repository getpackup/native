import WebKit

struct Cookie {
    var name: String
    var value: String
}

let gcmMessageIDKey = "00000000000" // update this with actual ID if using Firebase 

// URL for first launch
let rootUrl = URL(string: "https://packupapp.com")!

// allowed origin is for what we are sticking to pwa domain
// This should also appear in Info.plist
let allowedOrigins: [String] = ["https://packupapp.com", "https://getpackup.com"]

// auth origins will open in modal and show toolbar for back into the main origin.
// These should also appear in Info.plist
// let authOrigins: [String] = ["https://packupapp.com", "https://auth.getpackup.com", "https://accounts.google.com", "https://appleid.apple.com/", "https://www.facebook.com/", "https://twitter.com/", "https://firestore.googleapis.com"]
let authOrigins: [String] = ["https://auth.packupapp.com", "https://auth.getpackup.com"]
// allowedOrigins + authOrigins <= 10

let platformCookie = Cookie(name: "app-platform", value: "iOS App Store")

// UI options
let displayMode = "standalone" // standalone / fullscreen.
let adaptiveUIStyle = true     // iOS 15+ only. Change app theme on the fly to dark/light related to WebView background color.
let overrideStatusBar = false   // iOS 13-14 only. if you don't support dark/light system theme.
let statusBarTheme = "dark"    // dark / light, related to override option.
