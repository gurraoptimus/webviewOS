import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize the WKWebView
        webView = WKWebView(frame: self.view.frame)
        webView.navigationDelegate = self
        self.view.addSubview(webView)

        // Load a URL
        if let url = URL(string: "https://www.example.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

    // WKNavigationDelegate methods (optional)
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Finished loading")
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("Failed to load with error: \(error.localizedDescription)")
    }
}