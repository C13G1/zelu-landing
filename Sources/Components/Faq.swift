import Foundation
import Ignite

/// FAQ accordion on a light card. Structure via Ignite `ForEach`/`Section`/`Text`;
/// the `<button>` stays raw so it doesn't pick up Bootstrap's `.btn` styles, and
/// the +/- icon is a CSS-drawn `<span>`. Edit the questions in Sources/Content.swift.
struct Faq: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("Perguntas frequentes").class("faq-head")

                Section {
                    ForEach(faqs) { item in
                        Section {
                            "<button class=\"faq-q\" aria-expanded=\"false\">\(item.q)<span class=\"faq-icon\"></span></button>"
                            Section { Text(item.a) }.class("faq-a")
                        }
                        .class("faq-item")
                    }
                }
                .class("faq-items")
            }
            .class("faq-list")
        }
        .class("faq")
        .id("faq")
    }
}
