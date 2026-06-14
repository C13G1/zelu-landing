(function () {
  var reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  // ===== Hero: only the balls near the cursor drift away from it =====
  var orbit = document.querySelector('.orbit');
  if (orbit && !reduce) {
    var balls = Array.prototype.slice.call(orbit.querySelectorAll('.ball'));
    var st = balls.map(function () { return { bx: 0, by: 0, cx: 0, cy: 0, tx: 0, ty: 0 }; });
    var mx = -9999, my = -9999, raf = null, RADIUS = 210, PUSH = 38;
    function measure() { for (var i = 0; i < balls.length; i++) { var r = balls[i].getBoundingClientRect(); st[i].bx = r.left + r.width/2 - st[i].cx; st[i].by = r.top + r.height/2 - st[i].cy; } }
    function loop() {
      var moving = false;
      for (var i = 0; i < balls.length; i++) {
        var s = st[i], dx = s.bx - mx, dy = s.by - my, d = Math.sqrt(dx*dx + dy*dy);
        if (d < RADIUS && d > 0.01) { var f = 1 - d/RADIUS; s.tx = dx/d*f*PUSH; s.ty = dy/d*f*PUSH; } else { s.tx = 0; s.ty = 0; }
        s.cx += (s.tx - s.cx) * 0.15; s.cy += (s.ty - s.cy) * 0.15;
        balls[i].style.transform = 'translate(' + s.cx.toFixed(2) + 'px,' + s.cy.toFixed(2) + 'px)';
        if (Math.abs(s.tx - s.cx) > 0.05 || Math.abs(s.ty - s.cy) > 0.05) moving = true;
      }
      if (moving) raf = requestAnimationFrame(loop); else raf = null;
    }
    window.addEventListener('mousemove', function (e) { mx = e.clientX; my = e.clientY; if (!raf) raf = requestAnimationFrame(loop); }, { passive: true });
    window.addEventListener('mouseleave', function () { mx = -9999; my = -9999; if (!raf) raf = requestAnimationFrame(loop); });
    window.addEventListener('resize', measure);
    window.addEventListener('load', measure);
    measure();
  }

  // ===== Features: stage stays pinned; scroll swaps the active panel + spins the wheel =====
  var story = document.querySelector('.story');
  var wheel = document.querySelector('.wheel');
  var wrap = document.querySelector('.wheel-wrap');
  var panels = Array.prototype.slice.call(document.querySelectorAll('.panel'));
  var N = panels.length, current = -1;

  // each panel's colour -> its conic slice index (magenta,green,yellow,blue,red)
  var sliceOf = [4, 3, 2, 1, 0];           // panel order: red,blue,yellow,green,magenta
  var ACTIVE = 120, OTHER = 60, TARGET = 40;

  function activate(i) {
    if (i === current) return;
    current = i;
    panels.forEach(function (p, k) { p.classList.toggle('is-active', k === i); });
    var act = sliceOf[i];
    if (wheel) {
      for (var k = 0; k < 5; k++) wheel.style.setProperty('--w' + k, (k === act ? ACTIVE : OTHER) + 'deg');
      // rotate the wheel about its own centre — the fixed hub never moves
      wheel.style.transform = 'rotate(' + (TARGET - (act * OTHER + ACTIVE / 2)) + 'deg)';
    }
  }
  activate(0);

  if (story && N) {
    var ticking = false;
    function onScroll() {
      var r = story.getBoundingClientRect();
      var p = Math.min(1, Math.max(0, -r.top / ((r.height - window.innerHeight) || 1)));
      activate(Math.min(N - 1, Math.round(p * (N - 1))));
      ticking = false;
    }
    window.addEventListener('scroll', function () { if (!ticking) { ticking = true; requestAnimationFrame(onScroll); } }, { passive: true });
    window.addEventListener('resize', onScroll);
    onScroll();
  }

  // ===== FAQ accordion =====
  Array.prototype.slice.call(document.querySelectorAll('.faq-item')).forEach(function (item) {
    var q = item.querySelector('.faq-q'), a = item.querySelector('.faq-a');
    q.addEventListener('click', function () {
      var open = item.classList.toggle('open');
      q.setAttribute('aria-expanded', open ? 'true' : 'false');
      a.style.maxHeight = open ? a.scrollHeight + 'px' : '0px';
    });
  });
})();
