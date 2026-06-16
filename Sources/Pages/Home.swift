import Foundation
import Ignite

/// The single landing page. Just composes the components in order.
/// Edit content in Sources/Content.swift, sizes in Assets/css/styles.css.
struct Home: StaticPage {
    var title = "Zelu"

    private let testflight = "https://testflight.apple.com/join/MuUJhqc9"

    var body: some HTML {
        Section {
            NavBar(testflight: testflight)
            Hero(testflight: testflight)
            Features()
            Faq()
            SiteFooter()
        }
    }
}
