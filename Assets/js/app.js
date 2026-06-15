(function () {
    const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    // --- Hero: balls near the cursor drift away from it ---

    const orbit = document.querySelector('.orbit');

    if (orbit && !reduceMotion) {
        const balls  = [...orbit.querySelectorAll('.ball')];
        const state  = balls.map(() => ({ bx: 0, by: 0, cx: 0, cy: 0, tx: 0, ty: 0 }));
        const RADIUS = 210;     // px — cursor must be this close to push a ball
        const PUSH   = 38;      // px — max push distance
        let mx = -9999, my = -9999, raf = null;

        // record each ball's natural centre so we can measure how far to push it
        function measure() {
            for (let i = 0; i < balls.length; i++) {
                const r = balls[i].getBoundingClientRect();
                state[i].bx = r.left + r.width  / 2 - state[i].cx;
                state[i].by = r.top  + r.height / 2 - state[i].cy;
            }
        }

        function loop() {
            let moving = false;

            for (let i = 0; i < balls.length; i++) {
                const s     = state[i];
                const dx    = s.bx - mx;
                const dy    = s.by - my;
                const dist  = Math.sqrt(dx * dx + dy * dy);

                if (dist < RADIUS && dist > 0.01) {
                    const force = 1 - dist / RADIUS;
                    s.tx = (dx / dist) * force * PUSH;
                    s.ty = (dy / dist) * force * PUSH;
                } else {
                    s.tx = 0;
                    s.ty = 0;
                }

                // smoothly lerp current offset toward target
                s.cx += (s.tx - s.cx) * 0.15;
                s.cy += (s.ty - s.cy) * 0.15;
                balls[i].style.transform = `translate(${s.cx.toFixed(2)}px, ${s.cy.toFixed(2)}px)`;

                if (Math.abs(s.tx - s.cx) > 0.05 || Math.abs(s.ty - s.cy) > 0.05) moving = true;
            }

            raf = moving ? requestAnimationFrame(loop) : null;
        }

        window.addEventListener('mousemove',  (e) => { mx = e.clientX; my = e.clientY; if (!raf) raf = requestAnimationFrame(loop); }, { passive: true });
        window.addEventListener('mouseleave', ()  => { mx = -9999; my = -9999;          if (!raf) raf = requestAnimationFrame(loop); });
        window.addEventListener('resize', measure);
        window.addEventListener('load',   measure);
        measure();
    }

    // --- Features: scroll progress swaps the active panel and spins the wheel ---

    const story  = document.querySelector('.story');
    const wheel  = document.querySelector('.wheel');
    const panels = [...document.querySelectorAll('.panel')];
    const N = panels.length;
    let current = -1;

    // which wheel slice (0–4) lights up for each panel
    // panels are ordered: red, blue, yellow, green, pink
    // slices are ordered: pink, green, yellow, blue, red (clockwise from top)
    const sliceOf = [4, 3, 2, 1, 0];
    const ACTIVE = 120;     // active slice angle in degrees
    const OTHER  = 60;      // inactive slice angle
    const TARGET = 40;      // rotation offset so the active slice points up

    function activate(i) {
        if (i === current) return;
        current = i;

        panels.forEach((p, k) => p.classList.toggle('is-active', k === i));

        if (wheel) {
            const active = sliceOf[i];

            for (let k = 0; k < 5; k++) {
                wheel.style.setProperty(`--w${k}`, (k === active ? ACTIVE : OTHER) + 'deg');
            }

            // spin the inner wheel so the active slice faces up — the hub never moves
            wheel.style.transform = `rotate(${TARGET - (active * OTHER + ACTIVE / 2)}deg)`;
        }
    }

    activate(0);

    if (story && N) {
        let ticking = false;

        function onScroll() {
            const r        = story.getBoundingClientRect();
            const progress = Math.min(1, Math.max(0, -r.top / ((r.height - window.innerHeight) || 1)));
            activate(Math.min(N - 1, Math.round(progress * (N - 1))));
            ticking = false;
        }

        window.addEventListener('scroll', () => { if (!ticking) { ticking = true; requestAnimationFrame(onScroll); } }, { passive: true });
        window.addEventListener('resize', onScroll);
        onScroll();
    }

    // --- FAQ: click a question to expand or collapse its answer ---

    [...document.querySelectorAll('.faq-item')].forEach((item) => {
        const q = item.querySelector('.faq-q');
        const a = item.querySelector('.faq-a');

        q.addEventListener('click', () => {
            const open = item.classList.toggle('open');
            q.setAttribute('aria-expanded', String(open));
            a.style.maxHeight = open ? a.scrollHeight + 'px' : '0px';
        });
    });
})();
