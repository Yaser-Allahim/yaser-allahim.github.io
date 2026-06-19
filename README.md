# YSR·TV

My portfolio, built as a small television you channel-surf instead of scroll.

You land on a channel that's already running. Press space or the arrow keys to
change channels, type a number to dial one directly, and press `G` for the
printed channel guide. The whole thing is the shell in `index.html`; each
channel is either drawn inline or loaded as its own page in an iframe.

Live at https://yaser-allahim.github.io once it's deployed.

## Running it locally

It's a static site, so any local server works. It does need a server though:
the channels load each other (and a couple of games) over fetch, so opening
`index.html` straight off the file system won't work. From the project root:

```
npx serve -l 3000 .
```

then open http://localhost:3000.

## The channels

- `00` the news: a full CV.
- `01` the gallery: a first-person 3D museum of my design work (Three.js), with
  a flat slideshow as the fallback on touch and reduced-motion.
- `02` teletext: a blog rendered as old Ceefax pages. Posts are markdown in `posts/`.
- `03` telehire network: an infomercial that's also a hire-me pitch.
- `10` the arcade: a Pac-Man game I made in Godot.
- `11` snake: the classic, with a global leaderboard.
- `12` cube clicker: a full idle game that saves your progress.
- `13` uncanny golf: minigolf that went slightly wrong on purpose.
- `42`: a hidden test card. It isn't in the guide.
- Any number with nothing behind it shows static.

Deep links work. `?ch=11` tunes straight to a channel and skips the wake-up
sequence, so a resume can point people at `?ch=00`.

## Layout

```
index.html      the TV shell: bezel, boot, surfing, the dial, sound, the channel guide
channels/       one file per channel, each runs in an iframe
  pacman/       the Godot web export
games/          the game sources (snake, clicker, golf)
posts/          markdown blog posts and a manifest
assets/         the logo, gallery images, sound effects, social image
tuwaiq/         a bundled copy of my Tuwaiq Club sites, shown live in the gallery
```

## Notes

The shell is plain HTML, CSS and JavaScript in one file, no build step.
Channels talk to the shell with `postMessage`. Sound is a mix of Web Audio and
a few recorded clips in `assets/sfx/`. The museum and the Pac-Man build are the
only heavy pieces, and both load only when you tune to them.

Built by Yaser Allahim. The text on screen is meant to be read in a deadpan
late-night announcer voice.
