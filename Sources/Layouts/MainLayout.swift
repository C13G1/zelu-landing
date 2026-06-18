import Foundation
import Ignite

/// Page shell: loads fonts, the section stylesheets (Assets/css/*) and the
/// behaviour script (Assets/js/app.js). All styling lives in those .css files,
/// edit them there — this file only wires them up.
struct MainLayout: Layout {
    var body: some Document {
        Body {
            """
            <link rel="icon" href="images/zelu-ball.svg" type="image/svg+xml">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;600;700;800&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="css/styles.css">
            """
            content
            #"<script src="js/app.js" defer></script>"#
        }
    }
}
