# Writing for YSR·TV Teletext (CH 08)

No HTML. No editor. Just drop Markdown files in this folder.

> Heads-up: open the TV via `start-tv.cmd` (or any web server), not by
> double-clicking `index.html` — browsers block `fetch()` on `file://`,
> so posts can't load there. The channel will tell you if that happens.

## Publish a new page

1. Create `NNN.md` (e.g. `104.md`) — pick any 3-digit number that isn't taken.
2. Add the number to `manifest.json`: `{ "pages": [101, 102, 103, 104] }`
3. Refresh the TV. The index (page 100) updates itself.

## Page format

```
---
page: 104
section: BLOG
bar: blue            <- blue | red | magenta | green
title: FIRST LINE | SECOND LINE
titleColor: y        <- r g y b m c w
author: YASER
date: 12 JUN 2026
read: 4 MIN READ
---

Paragraphs separated by blank lines. Keep them short —
teletext wraps at ~30 characters.

**bold** renders yellow. *italic* renders cyan.
`text` renders as a highlighted key.
[102](#102) is a clickable page link.
{g}green{/} {r}red{/} {m}magenta{/} — any colour via tags.

---
(three dashes alone = rainbow rule)

## A sub-heading (green, double-ish height)

- bullet lists work
- inline styles work inside them

| CH | NAME     |
|----|----------|
| 08 | teletext |
(tables: header row turns yellow, cells take inline styles)

> A quoted block renders as a wide paragraph.

![Fig.1 — caption here](../assets/screenshot.jpg)
![Fig.2 — empty frame](placeholder)
```

Page 105 on the TV is a live demo of all of it.
