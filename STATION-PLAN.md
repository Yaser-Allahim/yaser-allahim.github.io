# YSR·TV — station plan: from prototype to broadcast

## A. GATHER — things only Yaser can provide

- [x] **Canonical name spelling** — **Allahim** (his ID spelling; he writes "Allahem" casually). Standardized in the ad.
- [ ] **Resume/CV file** — for ch 00 and a download link. PDF preferred.
- [x] **Contact policy** — publish `yaserallahim@gmail.com` ✓ (now on ch 00 with GitHub + LinkedIn).
- [~] **Real project inventory:**
  - [x] Pac-Man fan game — Godot 4.x web export dropped into `channels/pacman/` and **wired as
        CH 10 "the arcade"** (2026-06-19). Threads OFF (no COOP/COEP needed), boots clean.
        GAME-SIDE WARNING to fix on his end: export is missing `res://assets/Audio/SFX/b1_start.wav`
        (unimported stream) — re-import + re-export to pack it.
  - [x] Uncanny cat golf — `games/golf.js` (NOTE: loads memes/sprites from the Tuwaiq site's
        `Useful Assets/` folder — copy those over when it becomes a channel)
  - [x] Snake — `games/snake.js` (self-contained, ESC to exit, Firebase leaderboard, Tuwaiq palette)
  - [x] Cube Clicker — `games/clicker.js` (full idle game: buildings/upgrades/prestige/achievements)
  - [x] CSS crimes / doodle classifier / Rust CLI — dropped. The generic toy channels (pond, signal,
        css-crimes cube, doodle-judge) were **removed 2026-06-19** at Yaser's request to keep the
        lineup focused on real work. Current lineup: ch 00 CV · 01 gallery · 02 teletext · 03 telehire ·
        10 arcade (Pac-Man) · hidden 42 test card · NS. `ORDER=['01','02','03','10','00']`.
- [x] **Design work for the gallery (ch 06)** — 25 images in `assets/gallery/`:
  - `katwah/` (4) · `hashcode-2026/` (11: badges, certificates, stickers, stand, sheets) ·
    `scc-ai-bootcamp/` (10: badges, certificates, covers)
  - plus: Tuwaiq Club coming-soon page (live: https://tuwaiqksu.com — his design, hides the games)
    and the WIP front page at `C:\Users\h\Documents\Tuwaiq Website` (summer project)
- [~] **YouTube channel** — exists: https://www.youtube.com/@YaserAllahem — **no videos yet**;
      TV channel build waits for first uploads (he's taking his time, good)
- [ ] **2–3 real blog pages** in `posts/` — pointers given; writing pending.
- [ ] **Domain decision** — keep `yaser-allahim.github.io` or buy something.
- [ ] Optional: 2–4 more photos / b-roll for variety in future ads and about pages.
- [ ] Open questions answered (university/location publishing, event roles, Katwah context, availability wording)

## B. BUILD NEXT — once gathered

- [ ] **CH 00 rewrite — full CV** (his call: "a fleshed out full on CV in itself covering everything
      any CV would want"): education, experience, projects, skills, spoken languages, availability
      (internships + freelance now, full-time after late-2027), contact ✓ already live.
      Still scannable — CV content, broadcast formatting. Blocked on: CV intake answers (asked).
- [ ] **Gallery plaques**: sole designer on all three event identities (confirmed). Tuwaiq exhibits:
      coming-soon page (shipped) + WIP front page labeled "work in progress" (confirmed).
      Screenshots capturable locally from `C:\Users\h\Documents\Tuwaiq Website`.
- [x] **CH 01 — the gallery, v1 slideshow** (BUILT 2026-06-12): exhibition broadcast, 22 works / 3 collections,
      plaques, auto-advance. Becomes the **mobile / reduced-motion fallback** once the museum ships.
  - [x] **Tuwaiq added as a LIVE MEDIA WING (2026-06-17)** — websites aren't prints, so instead of
        screenshots they're **live interactive embeds you step into**. Collection vi `tuwaiq` in the
        shared manifest, 7 works: coming-soon (live/shipped), coming-soon Arabic, coming-soon mobile,
        WIP home, WIP events, WIP blog, WIP home mobile. Both surfaces **bundled into the repo** under
        `tuwaiq/` (`soon/` = copied SoonPage + `Useful Assets/`; `site/` = Astro `dist` rebuilt with
        `base:/tuwaiq/site/`), so same-origin iframes just work on GitHub Pages. **Museum**: live works
        render as glowing club-purple "monitor" exhibits (procedural `tvScreenTex`, ● LIVE / ▞ WIP
        plaque); press **E** → inspect overlay becomes a real iframe portal (cursor freed via
        exitPointerLock, faux browser-chrome bar w/ friendly URL + pill + ✕ close). **Slideshow**: live
        works show a generated screen + "▶ open live site" button → fullscreen iframe overlay (pauses
        the channel). Verified headless: 6 collections → 2 floors, 7 live points on floor 2, all
        bundled URLs 200, console clean. **Bug fixed:** `serve` redirects `/index.html` → no trailing
        slash, which broke the coming-soon page's relative `../Useful Assets/` sponsor logos → switched
        the manifest coming-soon URL to the directory form `../tuwaiq/soon/`.
  - [ ] **Yaser: VISUAL pass** — never eyeballed (0-viewport preview env); walk floor-2 east wing,
        step into the exhibits, judge the screen look + iframe feel + WIP framing.
  - [ ] Yaser: review exhibit order/curation — Tuwaiq is appended as collection vi (lands on floor 2);
        it's arguably the flagship web work, so consider promoting it. Also review the print plaque
        titles (derived from filenames).

- [ ] **CH 01 v2 — THE WALKABLE MUSEUM** (blueprint locked 2026-06-12, all decisions made):
      a first-person 3D museum generated at runtime from the gallery manifest — it literally grows
      when work is added.
  - decisions: **Three.js · PS1 low-fi** (low-res render upscaled, fog; artworks full-res) ·
    **spine layout** (lobby → one hall per collection, sized by work count → under-construction
    future wing that retreats as work is added) · **proximity HTML plaques + E/click to inspect**
    (full-res 2D takeover view) · **2D slideshow fallback** for touch/reduced-motion (same channel number)
  - build phases:
    - [x] P1: shared `assets/gallery/manifest.json` — both museum and slideshow read it (DONE 2026-06-12)
    - [x] P2+P3 **v2 ROTUNDA REDESIGN** (DONE 2026-06-12, per Yaser's sketch): bright modern circular
          lobby — fountain + greenery + benches + skylight, locked glass entrance (spawn), gift shop
          counter, founder portrait + generated directory, 3 wings (W/N/E) with lintel signs + hero
          teasers beside openings, 3D mini plaque cards beside every frame, two staircases to
          barricaded FLOOR 2 landings, **PS1 vertex-snap shader** on all materials
    - [x] P4a: shell routes ch 01 per device; pointer-locked channels forward space/g via postMessage
    - [x] **MUSEUM v3 (2026-06-12)** — all 11 feedback items done & headless-verified:
          floor 2 generates from manifest (5 collections → 2 floors, 35 works, 5 wings; 3/floor ground,
          4/floor above); stacked-switchback stairs with mid-landing (climb verified 0→2.6→5.2);
          elevation-aware ground solver (under-landing teleport bug FIXED); interactive map stand
          (generated from data, E to enlarge) replaces directory; benches fixed (tangent + tight colliders);
          coffee system (E at gift shop → carry cup, right-click sip, 3 sips → auto-refill verified,
          spam-click → shake away; audio hooks stubbed); his sprites in: bush.png, vendingmachine.png
          ("out of order" plaque), airvent.png, dallah on gift counter; mode-aware gates (rope stanchions
          at ground stairs when no upper floor / fancy tilted "FLOOR 3 opening soon" sign at top-floor
          center); low-poly dome skylight + beams (lambert flatShading + amb/dir lights); door inset fixed;
          wing end-walls decorated (painted collection name, bench, bushes, trash, vent).
          Manifest expanded+fixed: Cubix (4 works, correct studyguides/ path) + Tenny (9 works).
    - [ ] **VISUAL pass on v3** — never eyeballed! (capture-via-base64 looped; don't repeat that method —
          Yaser walks it, reports, or view single small screenshots only)
    - [ ] Yaser: walk v3 — judge stairs feel, floor 2, coffee, map stand, props; review my invented
          Cubix/Tenny plaque titles in assets/gallery/manifest.json
    - [ ] Coffee audio (his files): sip sound, refill voiceline, pour sound + "mysterious hand" visual
    - [ ] Tenny doodles: 10 more images in studyguides/Tenny-PHYS103/Doodles-Transparent/ unused —
          expand Tenny wing or new collection?
    - [ ] Yaser's parody PS1-console boot screen (he's building it) — splice before the enter card;
          deliver as standalone HTML like the other channel files
    - [ ] P4b: eye-doctor comfort prescription (FOV slider, look-sensitivity, motion reduction)
    - [ ] P5 (flavor): security desk with channel monitors, locked STAFF ONLY door, guest book = contact
- [~] **Game channels** (sources gathered in `games/`):
  - [x] Pac-Man: **CH 10 "the arcade"** (2026-06-19). Lazy-loaded iframe (~77MB build, src set only
        on first tune via the directory form `channels/pacman/` to dodge `serve`'s `/index.html`→
        slash-less 301 that breaks the build's relative js/wasm/pck paths). Injected a YSR·TV bridge
        into the stock export: monkeypatches `AudioContext` so the TV can suspend audio when you surf
        away (a `display:none` iframe already freezes the render loop), exposes `YSRChannel.play/pause`,
        honors `{type:'channel',volume}`, and forwards `space`→surf / `g`→guide so a focused game
        canvas can't trap the viewer. Surfable (in `ORDER`) + dialable `1`-`0` + book listing on
        page 3 (replaced the now-inaccurate "all eight channels" ad). Verified: boots clean, bridge
        + key-forward work, page 3 no overflow.
  - [x] Snake: **CH 11 "snake"** (2026-06-19). `channels/11-snake.html` loads `../games/snake.js`
        (`window.TuwaiqSnake.init(onExit)`); arrows steer, ESC exits → surfs. Self-contained, Firebase
        leaderboard has a 4s timeout. No audio (rAF auto-pauses when hidden).
  - [x] Cube Clicker: **CH 12 "cube clicker"** (2026-06-19). `channels/12-clicker.html` →
        `window.TuwaiqClicker.init(onExit)`; on-screen `✕` exits → surfs. localStorage + Firebase save
        (5s timeout), builds its own UI, no audio.
  - [x] Cat golf: **CH 13 "uncanny golf"** (2026-06-19). `channels/13-golf.html` →
        `window.TuwaiqGolf.init(onExit)`; ESC/P pause in-game, exit button surfs. **Retargeted
        `games/golf.js` MEME_PATH** to `../tuwaiq/Useful%20Assets/memes/` (+ fixed the one hardcoded
        `../Useful Assets` logo path and the sounds `base`). **Copied the 3 missing sound mp3s**
        (Scream/static/tada) from `Tuwaiq Website/Useful Assets/memes/Sounds/` (capital S) into the
        bundle at lowercase `tuwaiq/Useful Assets/memes/sounds/` (GitHub Pages is case-sensitive).
        Loads Howler from cdnjs (runs silent if offline); wrapper bridges Howler mute/volume to the TV.
  - [x] All three: lazy-mounted via a shared `lazyChannel()` helper (src set on first tune), in `ORDER`
        as the 10s arcade block (10–13), dialable, listed in the book page 3 (10/11/12/13 + rumor;
        dropped the stale ad). Each forwards `g`→guide; the game owns the rest, exits via its own
        affordance → surfs. `13` removed from the rumor-dial pool. Verified: all 3 boot, assets/Howler
        resolve, deep links `?ch=11..13` work, page 3 no overflow, console clean.
- [ ] **Book updates** as channels land: listings, coming-soon page, maybe "issue 002" cover gag.
- [x] **Deep links** (2026-06-19): `?ch=NN` (+ `&page=NNN` for teletext) parsed on load via
      `deepTarget()` (normalizes `1`→`01`, validates against `ORDER`+`42`, rejects `NS`/unknown →
      graceful fallback to `01`). When `?ch=` is present the input-source gag is skipped (recruiters
      land instantly). `syncUrl()` mirrors the active channel into the address bar on every change
      (`history.replaceState`) so any channel is shareable. Resume can link to `?ch=00`.

## C. BUILD LATER — systems

- [x] **Sound system** (BUILT 2026-06-13 — `Sound` module in index.html, Web Audio, all synthesized):
  - [x] SFX: static burst (`surf`, hooked into `staticBurst` → every channel-change/no-signal),
        dial blips (`blip`, in `pressDigit` + ch02 digit forward), page-turn paper (`paper`, in
        `flipPageNext/Prev` + both corner-drag commits), button thunk (`click`, on book open/close
        + volume buttons). Reusable 1s white-noise buffer; bandpass for static, highpass for paper.
  - [x] volume model 0–100 in 5 steps (20), persisted `ysrtv-vol`; mute toggle (`m` key / click the
        light) remembers last level via `ysrtv-lastvol`; returning visitors restore their saved choice
  - [x] two physical volume buttons in the chin (#voldown / #volup)
  - [x] keybinds: ArrowUp/ArrowDown (volume) + `m` (mute) — work in surf AND book mode; L/R still channel/page
  - [x] on-screen meter #volosd (bottom-center): bare green phosphor (no panel — matches the channel
        OSD), classic stepped TV **wedge** of 5 segments increasing in height, auto-fades after 1.5s
        (redesigned 2026-06-13 — first pass read too modern/app-toast)
  - [x] mute light #muteicon moved to **bottom-right** (was top-right, clashed with the channel
        number); red speaker-slash, click to unmute, shown via body.muted
  - [x] starts muted on FIRST EVER visit only; first gesture (once-capture) primes audio;
        one-time "press [↑] for sound" hint on boot when muted
  - [x] channel volume forwarding: `broadcastVolume()` postMessages `{type:'channel',volume:0..1}`
        to all #tv iframes on vol-change/first-gesture/iframe-load (boot.html already honors it;
        the future YouTube channel will read it too)
  - [x] **FULL SFX PALETTE (2026-06-13, all 4 bundles he picked)** — added to the `Sound` module,
        every sound exposed on `window.__sound` for console auditioning (e.g. `__sound.degauss()`):
        - CRT/power: `thunk` `degauss` `powerOn` `powerOff` `humBed(on)` (ambient flyback+mains, default OFF)
        - signal: `nsHiss(on)` `tuningSweep` `testTone(on)`
        - UI: `tick` `errorBuzz` `confirmUp` `confirmDown` `scribble` (pencil)
        - idents/easter eggs: `jingle` (YSR·TV C-E-G-C) `emergency` (real EAS 853+960Hz) `breakBumper`
        - WIRED triggers: `powerOn` (degauss) on first audible volume; `tick` per volume step;
          `confirmUp/Down` on unmute/mute; `nsHiss` on NS channel start/stop; `testTone` on CH 42
          (new `mods['42']`); `errorBuzz` on dialing an unlisted channel; `scribble` on eye-doctor
          option picks (his "I see clearly" ask)
        - NOT yet wired (built + auditionable, awaiting their feature/visual): `powerOff` (needs a
          power button), `humBed` (taste call — default off), `tuningSweep`, `jingle`, `emergency`
          (emergency-broadcast easter egg), `breakBumper` (the "we'll be right back" ident card)
  - [ ] DEFERRED: shell boot hum (can't autoplay pre-gesture); teletext key ticks (belong in
        02-teletext.html itself)
  - [x] **PIVOT TO HYBRID SAMPLES (2026-06-13)** — his verdict on the pure-synth palette: "all the
        sounds... too synthetic," only the volume tick (a real electronic tone) was pleasant. So:
        synth stays only for genuinely-electronic blips (volume tick, dial, test-card 1kHz, EAS);
        every **physical/texture** sound (surf static, no-signal hiss, page turn, button, degauss,
        power on/off, pencil scribble, tuning, error buzz) now plays a **real recording if present,
        else falls back to the existing synth** — so nothing regresses and each upgrades fake→real
        when its file lands. Loader: `loadSamples()` reads `assets/sfx/manifest.json` (key→file map,
        ships `{}` so zero 404 console noise), fetches + `decodeAudioData` into `buffers{}`;
        `playSample(name,{loop,gain})` plays through master. VERIFIED end-to-end with a generated
        test WAV: listed key played the sample, unlisted fell back to synth. Shopping list (CC0
        sources, key↔file table, manifest how-to) in `assets/sfx/README.md`.
  - [x] **SFX FILES IN + LOADER v2 (2026-06-13)** — Yaser dropped 11 clips; renamed to readable
        names, wired all 10 keys (surf/hiss/ambient/paper/click/powerOn/degauss/scribble/
        tuningSweep/errorBuzz). Loader now: **parallel** decode, **dedupes** shared files
        (power-on.mp3 used by powerOn+degauss decodes once), **auto-trims leading silence**
        (fixed the button "delay"), **slices** (duration), **random-position** (scribble picks a
        random 0.2s stroke from the 48s pencil; surf random 0.28s of 15s static), and **variant
        arrays** (3 button presses → random pick). New **ambient** bed = faint always-on TV room
        tone (tv-ambient.mp3), starts with power-on. Per-sound tuning lives in `SFX_CFG` in
        index.html (offset/duration/randomTo/gain/loop). VERIFIED: all 10 resolve to samples (no
        synth fallback), durations/offsets correct, console clean.
  - [ ] **LEVELS NEED YASER'S EAR** — durations are right but gains + slice positions are guesses;
        tune `SFX_CFG` by ear with him. Museum coffee pour/sip follow the same drop-in pattern in
        channels/01-museum.html.
  - [ ] KNOWN GAP: while pointer is LOCKED in the museum, keydowns go to the iframe, so ↑/↓ don't
        reach the shell — volume still works via chin buttons after ESC. Optional: forward up/down
        as shellkeys from 01-museum.html like it already does for space/g.
- [ ] **CH ?? — the movies (YouTube)**: IFrame Player API, channel uploads playlist
      (channel ID UC… → playlist UU…), shuffled, autoplaying (muted until TV volume is up),
      fake station watermark/DOG top-left, optional "NOW SHOWING — {title}" lower-third on video change.
      TV volume buttons drive the player volume. Depends on: YouTube channel existing + sound system.
- [x] **Boot gag chance** set to **0.5** (2026-06-19, Yaser's call: he wanted it easy to land on,
      not the originally-planned 0.02). `const INPUT_GAG_CHANCE = 0.5` in index.html.

## D. SHIP — launch checklist

- [~] git init + push (2026-06-19): pushed to **private** repo
      `Yaser-Allahim/yaser-allahim.github.io` (branch `main`, gh CLI). Pages NOT live yet: a free
      account only serves Pages from a public repo, so flip the repo to public (or upgrade to Pro)
      when ready, then Pages auto-serves at https://yaser-allahim.github.io from main at the root.
- [x] `404.html` = the no-signal channel (2026-06-19). Standalone page (no shared deps), animated
      static + "NO SIGNAL" + a link back to `/`; honors reduced-motion (still static).
- [x] favicon + OG/social image + meta tags (2026-06-19). `favicon.svg` (a tiny test-card TV);
      `assets/og-image.png` (1200x630 test-card card, generated with System.Drawing); description,
      author, theme-color, OpenGraph + Twitter tags in the head (og:url/image point at
      yaser-allahim.github.io — update if the domain changes).
- [~] mobile pass (started 2026-06-19): decision = **rotate prompt** (the TV is designed for
      landscape; portrait touch gets a "turn sideways" gate). DONE: rotate gate
      (`@media (orientation:portrait) and (pointer:coarse)`), touch tap targets + keyboard-hint
      hidden on `pointer:coarse`, **swipe-to-surf** (horizontal swipe changes channel, vertical left
      for scroll, iframe channels keep their own gestures), and the **single-page mobile book**
      (option A): on touch the 3D spread flattens to one page scaled to fill the width, scrolls if
      tall, with a bottom prev/next nav + page counter + close button and swipe-to-turn; desktop
      spread untouched. Verified via a `window.__forceSingle` debug flag.
      **Museum touch controls + chooser (2026-06-20):** the 3D museum (`01-museum.html`) now has touch
      controls (floating left-stick to walk folded into move(), drag-to-look on yaw/pitch, a contextual
      action button + tap to inspect, tap-to-enter), gated on `pointer:coarse` (or `?touch=1`). And the
      shell now **asks touch viewers** which broadcast they want: a `#ch01choose` overlay ("walk the
      museum" / "view the slideshow"), choice remembered per session; desktop still auto-loads the
      museum (+console boot), reduced-motion still auto-loads the slideshow. Both verified headlessly
      via debug overrides. STILL TODO (phase 3, needs landscape device eyes): CV scroll, teletext touch
      page-turn, telehire stage scaling, and a play-test of each game incl. Pac-Man touch.
      **Also renumbered the games 10-13 -> 04-07** (closes the gap the deleted filler left; lineup is
      now contiguous 00-07, the book's two listing pages map to 00-03 and 04-07, games are
      single-digit dialable). Renamed channel files to 05-snake/06-clicker/07-golf; pacman folder
      unchanged (now ch 04). Deep links are `?ch=04..07`.
- [x] honor `prefers-reduced-motion` (2026-06-19). First-time visitors with the OS reduce-motion
      flag get `eyes.still = true` (the static stops animating; channel-change burst and NS snow both
      read it). Returning visitors keep their saved eye-doctor choice. Museum already falls back to
      the slideshow under reduced-motion.
- [x] perf pass: **logo optimized** (2026-06-19) — `assets/YSRTV.png` (2112x1152, 3.66MB) downscaled
      to `assets/ysrtv-logo.png` (600x327, 193KB) and both head/chin refs repointed; original kept as
      the source. Hidden channels stay paused (iframes) and the heavy ones (museum, pacman, the games)
      already lazy-load. NOTE: the 3.66MB original is now unreferenced; remove it from the repo if you
      don't need the source there.
- [~] cross-browser sanity (2026-06-19): static audit done. Already clean (no backdrop-filter / :has(),
      AudioContext + backface-visibility + background-clip:text all carry webkit fallbacks,
      -webkit-overflow-scrolling present). Fixes: added `-webkit-user-select` for older Safari, and
      PNG favicon + apple-touch-icon fallbacks (`assets/favicon-32.png`, `assets/apple-touch-icon.png`)
      since Safari doesn't reliably show the SVG favicon. STILL NEEDS real-browser eyes (can't run
      here): actual render in Firefox/Safari, iOS Safari fixed-bottom chin vs the toolbar/home
      indicator (safe-area), and the museum (WebGL2) + Godot game in Safari.
- [x] README.md written (2026-06-19) — fresh, plain-spoken, no Astro leftovers (there were none).
- [x] **Code-comment cleanup** (2026-06-19, Yaser's ask): de-AI'd the comments in index.html (dropped
      em dashes, trimmed the verbose multi-sentence rationale to terse human notes), the pacman wrapper,
      and the golf.js edits. The game wrappers were already clean. Yaser's own iframe channel files
      (museum/teletext/etc.) were left as his; extend there if a reviewer wants full consistency.

## E. OPTIONAL PROGRAMMING — ideas menu, no obligation

- Station idents: rare (~5%) 2-second "YSR·TV — we'll be right back" cards instead of plain static between surfs
- "Now & Next" lower-third that appears briefly after landing on a channel
- Weather channel: real local weather via free API, styled like 1988, smooth-jazz energy
- Emergency broadcast easter egg (very rare, very loud colors, apologizes immediately)
- Test card CH 42 hums the 1kHz test tone once sound exists (muted by default, obviously)
- Scheduled programming: certain channels only "air" at certain hours; the book shows showtimes
- Konami code does something the network denies
- Channel book "issue 002" reprint when the lineup outgrows the current pages
