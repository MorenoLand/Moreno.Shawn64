# S64 Games Archive

**The games of Shawn Noel (Shawn64): S64 Games / Shawn64's Creations, playable again.**

Shawn Noel made these games in the early and mid 2000s with Game Maker. He drew the graphics, wrote the code,
designed the levels and, in Street Bike Fury, recorded the voice of its hero himself. He ran his own sites, Shawn64.com and
S64Games.com, built a community around the games, and kept making them. This project exists so that his work can
still be played, studied and remembered.

Everything in this archive is his work. The games, art, sounds, levels and game code belong to Shawn Noel, and
they are published here with the permission of his family. This repository is only a way to keep them alive.

> **In memory of Shawn Noel.**

## Play

The games run in a web browser (WebAssembly) and as a normal desktop program, using the open source
[Godot / Redot](https://redotengine.org) engine. Open the launcher to pick a game, or jump straight to one with
`?game=<name>` in the page address.

| Game | Made | Status |
| --- | --- | --- |
| **Street Bike Fury** | S64 Games, 2005 | Playable |
| **Infection 2: Meltdown** | S64 Games | Playable |
| Mini Golf Pro | S64 Games, 2004/2005 | Not ported yet (needs a runtime script interpreter) |
| Bounty Hunter SX | Shawn64's Creations, 2003 | Not ported yet |
| Thrust! | Shawn64's Creations, 2003/2004 | Not ported yet |
| Jetz Rampage, 2, 4 and Jetz Fusion | Shawn64's Creations | Not ported yet |
| Bubblegum, Cookie Buster, FWM, Galaxy Arcade 1 and 2, GM Hoops, Holiday Hunting, Marblex, Missile Wave 3D, MW2, Net Racer, SVSJ, Ski-Racer 2 | Shawn64's Creations | Not ported yet |

Keys while playing: **F1** shows a performance overlay, **F2** switches between stretched widescreen and the
original 4:3 picture. Touch screens get on-screen buttons.

## Credits

Created by **Shawn Noel**: graphics, programming, design, and the voice of Max Nitro.

The people who helped him, as they are credited in the games themselves:

- **Brandon Rohrer**: level generation programming in Street Bike Fury (the room storing and placing scripts).
- **Dave Perritte**: voice acting (Enemy) and testing.
- **Aaron Brimm**: voice acting (Drug Dealer).
- **Jorge Hernandez**: testing.
- **Skiracer901**: the save system in Bounty Hunter SX, and graphics and support across the Jetz games.
- **Darthlupi**: testing and feedback.
- The **S64 Games community**, the **Game Maker community**, and the staff of **Shangri-La (Graal Online)**.
- The Jetz Rampage credits also thank: Themeandme, Diagonalmoonn, Morphosis2001, Icenfire, Mr Hyun, Adam, Zimmy2002,
  Springymajig, Meweight, Tibit, Urisoft, Yoshi & Tongue, Deku 2002, Ed, SayainPrince, Jazzuo, Erikzijlstra,
  JM Studios, TheRealMethuselah, Gizmo, CapnChubby, Stenners, Razon EX and GMakerExtrodinare.
- **Mark Overmars**, who made Game Maker, the tool all of this was built with.

See [CREDITS.md](CREDITS.md) for the full list.

## How it works

The original games are Game Maker executables. This project reads the data out of them (sprites, sounds, objects,
rooms, scripts and every drag-and-drop action), translates the Game Maker Language into GDScript, and runs it on a
small Game Maker compatibility layer written for Godot (`gm/`). Nothing is rewritten by hand: the games run on
their own original code and art.

The tool that does all of this is `gmport.py`. It is meant to be reused: if you have an old Game Maker game
you want to preserve, see [docs/PRESERVING.md](docs/PRESERVING.md).

```
python gmport.py info   game.exe                   # what kind of Game Maker exe is it?
python gmport.py make   game.exe --slug mygame     # extract, translate, convert audio, add to the launcher
python gmport.py run    mygame --steps 600         # play-test without opening a visible window
python gmport.py export                            # build the web version
```

## Building

You need Python 3.10+ (and `numpy` only if a game uses MIDI music), [ffmpeg](https://ffmpeg.org) for audio
conversion, and Godot 4.3+ or Redot with its web export templates. Set `FFMPEG`, `REDOT` and (if needed)
`PY_NUMPY` to point at them. The original executables are not part of this repository; the converted games are
already in `games/`, so you only need the executables to rebuild them.

## Music

Street Bike Fury's original soundtrack used three commercial songs by Staind. Those recordings are not Shawn's and
are not included here, so the menu and some levels are quieter than the original. If you own them you can add them
back; see [docs/PRESERVING.md](docs/PRESERVING.md#sounds).

## License

The compatibility layer and tools (`gm/`, `gmport/`, `gmport.py`) are released under the MIT license.
The games and everything extracted from them are the work of Shawn Noel and are **not** covered by that license.
See [NOTICE.md](NOTICE.md).

Game Maker is a trademark of its owners. This project is not affiliated with Game Maker, YoYo Games or Godot.
