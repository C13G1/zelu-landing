import Foundation
import Ignite

/// Site footer: big wordmark + social links.
struct SiteFooter: HTML {
    var body: some HTML {
        """
        <footer class="site-footer">
          <div class="footer-word">Zelu</div>
          <div class="footer-social">
            <a href="https://instagram.com/zelu" aria-label="Instagram" target="_blank" rel="noopener">
              <svg class="ic-ig" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.9" stroke-linecap="round" stroke-linejoin="round">
                <rect x="2.5" y="2.5" width="19" height="19" rx="5.4"></rect>
                <circle cx="12" cy="12" r="4.6"></circle>
                <circle cx="17.4" cy="6.6" r="1.15" fill="currentColor" stroke="none"></circle>
              </svg>
              <span>@zelu</span>
            </a>
            <a href="https://tiktok.com/@zelu" aria-label="TikTok" target="_blank" rel="noopener">
              <svg viewBox="0 0 24 24" fill="currentColor"><path d="M16.5 2h-2.9v12.3a2.3 2.3 0 1 1-2.3-2.3c.2 0 .5 0 .7.1V9.1a5.3 5.3 0 1 0 4.5 5.2V8.4a6.6 6.6 0 0 0 3.8 1.2V6.7a3.8 3.8 0 0 1-3.8-3.8c0-.3 0-.6.1-.9Z"/></svg>
              <span>@zelu</span>
            </a>
          </div>
        </footer>
        """
    }
}
