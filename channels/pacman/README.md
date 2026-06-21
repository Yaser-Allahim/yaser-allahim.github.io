# Pac-Man web export

The Godot 4.x web export lives here, mounted as channel 04 (the arcade).

## Re-exporting (Godot 4.x, Project > Export > Web)

- Export path: this folder, filename `index.html`. Godot writes `index.html` plus the
  `.js`, `.wasm` and `.pck` side files; keep them together.
- Thread Support: OFF. Threaded web builds need COOP/COEP headers that GitHub Pages
  doesn't send, so the game would hang on a black screen. Godot 4.3+ runs fine without them.
- Head Include can stay empty. Canvas resize policy: Adaptive works best in an iframe.

The channel wiring (the section in `index.html`, the lazy mount, the book listing) is
already in place, so a re-export just needs to overwrite the files in this folder.
