import Foundation
import Ignite

/// Fixed top navigation bar (Ignite `Link`s).
struct NavBar: HTML {
    let testflight: String

    var body: some HTML {
        Section {
            Link("Zelu", target: "#top").class("nav-brand")

            Section {
                Link("Sobre o Zelu", target: "#story").class("nav-sober")
                Link("FAQ", target: "#faq").class("nav-sober")
                Link("Baixe agora", target: testflight)
                    .target(.blank).relationship(.noOpener).class("nav-cta")
            }
            .class("nav-links")
        }
        .class("nav")
    }
}
