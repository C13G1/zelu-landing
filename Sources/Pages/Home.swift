import Foundation
import Ignite

/// The single landing page. Just composes the components in order.
/// Edit content in Sources/Content.swift, sizes in Assets/css/base.css.
struct Home: StaticPage {
    var title = "Zelu"

    private let testflight = "https://testflight.apple.com/join/MuUJhqc9"

    var body: some HTML {
        Section {
            // fixed corner wheel — shared background behind the whole page
            // (the opaque hero/footer hide it; story+faq let it show through)
            "<div class=\"wheel-bg\"><div class=\"wheel-wrap\"><div class=\"wheel\"></div></div></div>"

            NavBar(testflight: testflight)
            Hero(testflight: testflight)
            Features()
            Faq()
            SiteFooter()
        }
    }
}
