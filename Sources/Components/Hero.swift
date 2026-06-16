import Foundation
import Ignite

/// Full-screen hero: a scatter of avatar images (from `heroImages`) around the
/// central Zelu flip-card. Add/move/resize images in Sources/Content.swift.
struct Hero: HTML {
    let testflight: String

    var body: some HTML {
        Section {
            Section {
                ForEach(heroImages) { ball in
                    let w = ball.size.map { "width:\($0)vw;" } ?? ""
                    "<div class=\"ball\" style=\"left:\(ball.x)%;top:\(ball.y)%;\(w)\"><img src=\"images/\(ball.img).png\" alt=\"\"></div>"
                }

                """
                <a class="zelu-ball" href="\(testflight)" target="_blank" rel="noopener" aria-label="teste já">
                  <span class="zb-inner">
                    <span class="zb-face zb-front"><img src="images/zelu-ball.svg" alt="Zelu"></span>
                    <span class="zb-face zb-back"><img src="images/zelu-ball-back.svg" alt="teste já"></span>
                  </span>
                </a>
                """
            }
            .class("orbit")

            "<div class=\"scroll-hint\">scroll</div>"
        }
        .class("hero")
        .id("top")
    }
}
