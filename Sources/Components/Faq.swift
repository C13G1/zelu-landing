import Foundation
import Ignite

/// FAQ accordion on a light card. Edit the questions in Sources/Content.swift.
struct Faq: HTML {
    var body: some HTML {
        Section {
            Section {
                "<h2 class=\"faq-head\">Perguntas frequentes</h2>"

                Section {
                    ForEach(faqs) { item in
                        """
                        <div class="faq-item">
                          <button class="faq-q" aria-expanded="false">\(item.q)<span class="faq-icon"></span></button>
                          <div class="faq-a"><p>\(item.a)</p></div>
                        </div>
                        """
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
