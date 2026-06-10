import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Body {
            """
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Sora:wght@700&display=swap" rel="stylesheet">
            <style>
              @font-face {
                font-family: 'Bolota';
                src: url('fonts/Bolota.ttf') format('truetype');
                font-display: swap;
              }
              :root {
                --zelu-bg: #101717;
                --zelu-red: #df2a1d;
                --zelu-blue: #2196bc;
                --zelu-yellow: #d4930f;
                --zelu-cream: #fefff5;
                /* stage width when covering the viewport at locked aspect ratio */
                --dw: max(100vw, 177.78vh);  /* desktop 1920x1080 */
                --mw: max(100vw, 46.11vh);   /* mobile 1376x2984 */
              }
              * { margin: 0; padding: 0; box-sizing: border-box; }
              html, body {
                width: 100%;
                height: 100%;
                overflow: hidden;
                background: var(--zelu-bg);
              }
              .container, .container-fluid, .ig-main-content {
                max-width: 100% !important;
                width: 100% !important;
                padding: 0 !important;
                margin: 0 !important;
              }

              .stage {
                position: relative;
                width: 100vw;
                height: 100vh;
                overflow: hidden;
                background: var(--zelu-bg);
                font-family: 'Sora', sans-serif;
              }
              .stage img { display: block; }

              /* fixed-ratio canvases: scale uniformly, crop overflow, never stretch */
              .d-only, .m-only {
                position: absolute;
                left: 50%; top: 50%;
                transform: translate(-50%, -50%);
              }
              .d-only { width: var(--dw); height: calc(var(--dw) * 0.5625); }
              .m-only { width: var(--mw); height: calc(var(--mw) * 2.1686); }

              .avatar {
                position: absolute;
                aspect-ratio: 1 / 1;
                height: auto;
                border-radius: 50%;
              }

              .pill {
                position: absolute;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 999px;
                color: var(--zelu-cream);
                font-weight: 700;
                line-height: 1.2;
                text-align: center;
                white-space: nowrap;
                z-index: 5;
              }
              .pill-blue   { background: var(--zelu-blue); }
              .pill-yellow { background: var(--zelu-yellow); }
              .pill-red    { background: var(--zelu-red); }

              /* ===== Desktop — Figma frame 1598:2075 (1920x1080) ===== */
              .lines {
                position: absolute;
                left: -43.63%; top: -3.11%;
                width: 163.83%; height: 229.21%;
                pointer-events: none;
              }

              .avatar-thomas  { left: 19.75%; top: 0.51%;  width: 10.60%; }
              .avatar-mathias { left: 32.62%; top: 33.70%; width: 7.20%; }
              .avatar-dayo    { left: 71.42%; top: 77.88%; width: 7.52%; }
              .avatar-bullet  { left: 77.70%; top: 53.52%; width: 9.64%; }
              .avatar-camis   { left: 57.33%; top: 14.86%; width: 8.01%; }
              .avatar-jonas   { left: 19.75%; top: 66.85%; width: 9.07%; }

              .zelu-circle {
                position: absolute;
                left: 14.03%; top: 40.67%;
                width: 73.76%; height: 135.46%;
                pointer-events: none;
              }

              .d-only .pill {
                padding: calc(var(--dw) * 0.0081) calc(var(--dw) * 0.0092);
                font-size: calc(var(--dw) * 0.01206);
              }
              .pill-blue   { left: 55.84%; top: 89.06%; }
              .pill-yellow { left: 66.59%; top: 11.64%; }
              .pill-red    { left: 17.08%; top: 36.63%; }

              .cta {
                position: absolute;
                left: 43.06%; top: 74.55%;
                width: 15.69%;
                aspect-ratio: 301.294 / 108.158;
                background: url('images/teste-ja.png') no-repeat center / 100% 100%;
                z-index: 10;
                transition: transform 0.15s ease;
              }
              .cta:hover { transform: scale(1.05); }

              .m-only { display: none; }

              /* ===== Mobile — Figma frame 2254:3734 (1376x2984) ===== */
              @media (orientation: portrait) {
                .d-only { display: none; }
                .m-only { display: block; }

                .m-wrap {
                  position: absolute;
                  display: flex;
                  align-items: center;
                  justify-content: center;
                  pointer-events: none;
                }
                .m-wrap img { flex: none; }

                .m-line-green {
                  position: absolute;
                  left: -171.51%; top: -7.00%;
                  width: 256.17%; height: 120.32%;
                  pointer-events: none;
                }
                .m-wrap-blue { left: -354.14%; top: -9.15%; width: 583.08%; height: 268.87%; }
                .m-wrap-blue img { width: calc(var(--mw) * 4.7209); height: calc(var(--mw) * 4.7209); transform: rotate(-74.15deg); }
                .m-wrap-red { left: -101.51%; top: -69.47%; width: 318.05%; height: 190.18%; }
                .m-wrap-red img { width: calc(var(--mw) * 3.6529); height: calc(var(--mw) * 1.9791); transform: rotate(68.49deg); }
                .m-wrap-yellow { left: -151.01%; top: -1.17%; width: 392.36%; height: 218.43%; }
                .m-wrap-yellow img { width: calc(var(--mw) * 3.1927); height: calc(var(--mw) * 4.2149); transform: rotate(10.76deg); }

                .m-zelu {
                  position: absolute;
                  left: 0; top: 20.78%;
                  width: 100%; height: 79.22%;
                  pointer-events: none;
                }

                .m-camis  { left: 68.17%; top: 10.22%; width: 27.79%; }
                .m-dayo   { left: 19.62%; top: 20.81%; width: 20.88%; }
                .m-bullet { left: 57.89%; top: 80.65%; width: 26.76%; }

                .m-only .pill {
                  padding: calc(var(--mw) * 0.0313) calc(var(--mw) * 0.0356);
                  font-size: calc(var(--mw) * 0.0465);
                }
                .m-pill-yellow { left: 2.18%;  top: 13.94%; }
                .m-pill-red    { left: 10.17%; top: 72.62%; }

                /* invisible link over the "teste já" baked into m-zelu-full.png */
                .m-cta {
                  position: absolute;
                  left: 25.80%; top: 60.20%;
                  width: 48.40%; height: 8.01%;
                  border-radius: 999px;
                  z-index: 10;
                }
              }
            </style>
            """
            content
        }
    }
}
