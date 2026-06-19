# YSR·TV — sound effects (drop real recordings here)

The TV plays a **real recording** for a sound the moment its file exists in this
folder. Until then it falls back to the (synthesized) placeholder. So you can add
them **one at a time**, in any order — each one upgrades from fake → real on the
next page refresh. Nothing breaks if a file is missing.

## How to add a sound
1. Find a clip (see sources below). **Keep it short.**
2. Export as **`.mp3`** (ogg/wav also work) — mono is fine, small file size.
3. Drop it in this folder (`assets/sfx/`). The file name can be anything.
4. Add **one line** to `manifest.json` mapping the sound's **key** → your file name, e.g.:
   ```json
   {
     "degauss": "degauss.mp3",
     "paper": "my-page-turn.mp3"
   }
   ```
5. Refresh the page. Done. (Tell me if one's too loud/quiet and I'll set its level.)

> The `manifest.json` step is what keeps the browser console clean — the TV only
> requests files you've actually added. Keys must match the **Key** column below.

## Where to get them (royalty-free)
- **Pixabay** — pixabay.com/sound-effects — easiest, no account, all royalty-free, no credit needed.
- **Freesound** — freesound.org — huge library; **filter License → "Creative Commons 0"** so no attribution is required (free account to download).
- **Mixkit** — mixkit.co/free-sound-effects — free, no attribution.
- Or **record your own** — a phone mic on real paper / real buttons beats any download.

> Prefer **CC0 / "no attribution"** clips. If you grab something under a CC-BY
> license (credit required), tell me and I'll add a credits note to the site.

## The shopping list

| Key | Suggested file | Sound | Search terms | Notes |
|---|---|---|---|---|
| `surf` | `channel-change.mp3` | analog TV channel-change / short static burst | "tv static burst", "channel change", "tv static short" | ~0.2–0.5s. Plays on every surf — keep it snappy |
| `hiss` | `static-loop.mp3` | continuous TV snow / white-noise hiss | "tv static loop", "white noise tv", "analog static" | **must loop seamlessly** (1–3s). Held while on no-signal |
| `paper` | `page-turn.mp3` | single paper page turn / flip | "page turn", "paper flip", "book page" | the channel-book page turns |
| `click` | `button.mp3` | chunky plastic TV/remote button press | "tv button click", "plastic button", "remote click" | book open/close + future buttons |
| `degauss` | `degauss.mp3` | CRT degauss "bwomp" / demagnetize | "crt degauss", "tv degauss", "monitor degauss" | the iconic one — worth getting right |
| `powerOn` | `power-on.mp3` | old CRT turning ON (relay + degauss + whine) | "crt tv power on", "old tv turn on", "tube tv on" | plays once when sound first comes alive |
| `powerOff` | `power-off.mp3` | CRT turning OFF (shrink to a dot, whine down) | "crt tv power off", "old tv turn off" | ready for a future power button |
| `scribble` | `pencil.mp3` | pencil writing / scribble on paper | "pencil writing", "pencil scribble", "pencil on paper" | eye-doctor option picks |
| `tuningSweep` | `tuning.mp3` | analog tuner sweep / warble | "analog tuning", "radio tuning sweep", "tv tuning" | not wired yet — optional |
| `errorBuzz` | `error.mp3` | short buzzer / "wrong" buzz | "buzzer wrong", "error buzz", "game-show buzzer" | invalid-channel dial. optional |

## Not in this list (handled elsewhere / later)
- **Volume tick, dial beep, test-card 1 kHz tone, EAS emergency tone** stay synthesized —
  they're genuinely electronic tones and sound right that way.
- **Coffee pour / sip** live in the museum (`channels/01-museum.html`) and follow the
  same drop-in pattern there when you record them.
