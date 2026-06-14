import Foundation
import Ignite

/// Features: a pinned stage holding one COMPLETE wheel + the phone/text.
/// As you scroll `.story`, the stage stays put — only the active panel's
/// phone + text cross-fade in and the wheel rotates to face it. The stage
/// (and wheel) leave together when the section ends, so the wheel never
/// reaches the FAQ/footer. Edit the panels in Sources/Content.swift.
struct Features: HTML {
    var body: some HTML {
        Section {
            Section {
                "<div class=\"wheel-wrap\"><div class=\"wheel\"></div></div>"

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
