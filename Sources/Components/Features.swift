import Foundation
import Ignite

/// Features: a pinned stage holding the phone + text for each screen.
/// As you scroll `.story`, the stage stays put — only the active panel's
/// phone + text cross-fade in, and the fixed corner wheel (rendered once
/// in `Home` as the page background) rotates to face it.
/// Edit the panels in Sources/Content.swift.
struct Features: HTML {
    var body: some HTML {
        Section {
            Section {
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
