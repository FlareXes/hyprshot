# Hyprshot, but with Annotation

<img src="https://github.com/FlareXes/assets/blob/main/hyprshot/demo_720p.gif" width="460" align="right" />

A simple screenshot script for **Hyprland/Wayland**.

📌 Output directory:
- `~/Pictures/Screenshots`

## Dependencies

Install these packages:

- `slurp` (region selection)
- `grim` (capture screenshot)
- `satty` (annotate/edit + save)
- `wl-copy` (clipboard support)

### Arch

```bash
sudo pacman -S slurp grim satty wl-clipboard
```

## Installation

Save the script somewhere in your PATH, for example:

```bash
sudo cp hyprshot.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/hyprshot.sh
```

## Usage

You can run the script directly from the terminal:

```bash
./hyprshot.sh
````

But the recommended way is to bind it to a Hyprland keybind.

### Hyprland Keybind

Add this to your `~/.config/hypr/hyprland.conf`:

```ini
bind = SUPER, S, exec, hyprshot.sh
```
- Now pressing **Super + S** will launch the hyprshot to take screenshot.

## Why?

I made this script for a few reasons:

1. **Original Hyprshot is great, but it lacks annotation support.**  
   Annotation is a must-have feature for any screenshot tool.

2. **Hyprshot is not an official part of the Hyprland ecosystem, and it has a lot of code.**  
   And yeah, I’m paranoid. What if the original Hyprshot ever gets hacked? (joke)  
   Smaller script = easier to audit = less attack surface. (reallyyyy wow!)

3. **I already had my own screenshot script, but it used `swappy`.**  
   `swappy` works fine, but it needs theming/ricing and looks kinda old.

So I rewrote/updated my script to use **`satty`** instead.  
`satty` looks modern, needs no ricing, and blends nicely with basically any Hyprland theme.

So yeah... here we are.

## Credits

- I stole the name
  https://github.com/Gustash/Hyprshot

## License

MIT License. See [LICENSE](LICENSE) for details.
