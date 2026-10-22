# S64 Games Archive

Playable versions of the games Shawn Noel made as Shawn64 / S64 Games in the early and mid 2000s with Game Maker.

He drew the art, wrote the code and designed the levels. The games and everything extracted from them are his
work, archived here with his family's permission so they can still be played. See [CREDITS.md](CREDITS.md).

## Play

The games run in a web browser (WebAssembly) and as a normal desktop program, using the open source
[Godot / Redot](https://redotengine.org) engine. Open the launcher to pick a game, or jump straight to one with
`?game=<name>` in the page address.

| Game | Made | Status |
| --- | --- | --- |
| Street Bike Fury | S64 Games, 2005 | Playable |
| Infection 2: Meltdown | S64 Games | Playable |
| Mini Golf Pro | S64 Games, 2004/2005 | Menus and course select work; play-testing in progress, online and editor parts are disabled |
| Bounty Hunter SX, Thrust!, Bubblegum, Cookie Buster, Holiday Hunting | Shawn64's Creations | Ported, title screens verified |
| Jetz Rampage, Jetz Rampage 2, Jetz Rampage 4: Revenge, Jetz Fusion | Shawn64's Creations | Ported, title screens verified |
| Marblex, Missile Wave 3D, Net Racer, Ski-Racer 2, SVSJ | Shawn64's Creations | Ported, title screens verified |
| FWM, Galaxy Arcade 1 and 2, GM Hoops, MW2 | Shawn64's Creations | Not ported yet |

On the web each game is its own download, fetched only when you pick it.

Keys while playing: **F3** shows a performance overlay, **F2** switches between stretched widescreen and the
original 4:3 picture. Touch screens get on-screen buttons.

## Credits

Created by **Shawn Noel**. The people who helped, as credited in the games, are listed in [CREDITS.md](CREDITS.md),
along with **Mark Overmars**, who made Game Maker.

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
