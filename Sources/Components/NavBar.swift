import Foundation
import Ignite

/// Fixed top navigation bar.
struct NavBar: HTML {
    let testflight: String

    var body: some HTML {
        """
        <nav class="nav">
          <a class="nav-brand" href="#top">Zelu</a>
          <div class="nav-links">
            <a class="nav-sober" href="#story">Sobre o Zelu</a>
            <a class="nav-sober" href="#faq">FAQ</a>
            <a class="nav-cta" href="\(testflight)" target="_blank" rel="noopener">Baixe agora</a>
          </div>
        </nav>
        """
    }
}
