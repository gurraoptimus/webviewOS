import SwiftUI
import WebKit

// A SwiftUI wrapper for WKWebView
struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        // Example: Load a website URL in the WebView
        WebView(url: URL(string: "https://gurraoptimus.github.dev/webviewOS")!)
            .edgesIgnoringSafeArea(.all) // Make sure it covers the entire screen
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
