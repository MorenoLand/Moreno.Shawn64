# Preserving a Game Maker game with gmport

`gmport.py` turns a Game Maker executable into a game that runs in Godot or Redot, in the browser and on the
desktop. It was written to archive the games of Shawn Noel, and it is general enough to be pointed at other games.

## What is supported

| Format | Status |
| --- | --- |
| Game Maker 6.0 / 6.1 executables | Supported |
| Game Maker 5.3 / 5.3A executables | Detected (`gmport.py info`), reader not written yet |
| Game Maker 5.0 to 5.2 | Not supported yet |
| Game Maker 7 / 8 | Not supported yet |

Games that rely on external DLLs, networking, or code that builds new events at run time (`execute_string`,
`object_event_add`) need more runtime work; the extractor still works on them.

## Steps

```
python gmport.py info game.exe
python gmport.py make game.exe --slug mygame --title "My Game" --credit "Author, 2005" --size 640x480
python gmport.py run mygame --steps 600 --shot 300:shot.png
```

`make` runs every stage, and each stage can be run alone:

| Command | What it does |
| --- | --- |
| `extract` | Decrypts and unpacks the exe into `games`-independent JSON and image/sound files in the build folder. |
| `dump-code` | Writes every piece of GML in the game to one text file, handy for reading. |
| `build` | Translates GML and drag-and-drop actions to GDScript and writes `games/<slug>/`. |
| `audio` | Converts 8-bit WAV to 16-bit, `.wma` and `.mp3` to Ogg, and renders MIDI with a General MIDI sound bank. |
| `assets` | Publishes the staged files with names Godot will not import. |
| `check` | Lists Game Maker functions the game calls that the runtime does not implement yet. |
| `index` | Rewrites `games/index.json`, the launcher menu. |
| `rebuild` | Re-runs everything after the extract step. |
| `run` | Plays the game headless or off-screen with scripted input, for testing. |
| `export` | Exports the whole project as a web build. |

Build files go to a folder next to the project (`S64_BUILD`, default `../s64-games-build`) so editors do not
index them.

## Per-game settings

`configs/<slug>.json`:

```json
{
 "title": "My Game",
 "credit": "Author, 2005",
 "size": [640, 480],
 "touch": [ {"label": "LEFT", "x": 10, "y": 380, "w": 90, "h": 90, "vk": [37]},
            {"label": "GRENADE", "x": 436, "y": 400, "w": 96, "h": 70, "mouse": 2} ],
 "auto_answers": { "Open the website?": 0 },
 "exclude_sounds": ["some_commercial_song"],
 "redact": ["a secret string in the code"]
}
```

- `touch`: on-screen buttons, in game pixels. `vk` is a list of Game Maker key codes, `mouse` is a mouse button
  (1 left, 2 right). Any touch outside a button aims and presses the left mouse button.
- `auto_answers`: answers (1 yes, 0 no) for `show_question` prompts that no longer make sense, such as ones that
  open websites that are gone.
- `exclude_sounds`: sounds left out of the published assets (use this for third party music).
- `redact`: text removed from the code before it is translated.

## Sounds

Sounds named in `exclude_sounds` are skipped; the game simply plays nothing for them. To restore them, remove the
name from the config and run `python gmport.py rebuild <slug>` with the original exe available.

MIDI music is rendered offline from a DLS sound bank (`DLS_PATH`, by default the `gm.dls` that ships with Windows)
and needs `numpy`.

## Adding a missing function

`check` prints missing functions. Implement them as `func f_<name>(...)` in `gm/gm.gd` (anything that needs game
state) or `gm/gm_lib.gd` (pure functions), and add the name to `gmport/gmltables.py` if it needs the calling
instance as its first argument.

## Testing

`run` accepts `--click STEP:X,Y`, `--hold KEY` and `--hold-from STEP`, `--spawn STEP:OBJECT:COUNT`, `--prof`
and `--overlay`. With `--shot` it renders off-screen and minimized, never in a visible window.
