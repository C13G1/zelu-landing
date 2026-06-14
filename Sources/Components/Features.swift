import Foundation
import Ignite

/// Features: a sticky stage holding the planted wheel + the phone/text.
/// As you scroll `.story`, the stage pins in place — the wheel spins and the
/// active panel's phone + text cross-fade in; when the screens end the stage
/// releases and scrolls away. Edit the panels in Sources/Content.swift.
struct Features: HTML {
    var body: some HTML {
        Section {
            Section {
                // the wheel is planted here, inside the pinned stage
                "<div class=\"wheel-bg\"><div class=\"wheel-wrap\"><div class=\"wheel\"></div></div></div>"

                ForEach(storyPanels) { p in
                    """
                    <article class="panel" style="--accent: var(--zelu-\(p.accent));">
                      <div class="panel-copy">
                        <span class="panel-tag">\(p.tag)</span>
                        <h2>\(p.titleHTML)</h2>
                        <p>\(p.body)</p>
                      </div>
                      <img class="panel-phone" src="images/\(p.phone).png" alt="\(p.tag)">
                    </article>
                    """
                }
            }
            .class("story-stage")
        }
        .class("story")
        .id("story")
    }
}
