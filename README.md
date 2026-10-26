# Night City Panel

Night City Panel is a modular cyberpunk / neo-noir dashboard widget for
[Quickshell](https://quickshell.org/), targeting Wayland desktops and the QS
Widgets Store.

> **Status:** early development (`v0.1.0` plan). The QS Store manifest and
> package layout are placeholders until verified with the current CLI.

## Features planned

- Dashboard with clock, calendar, weather, media and system cards
- Separate Media, Performance and Weather pages
- MPRIS media controls and compositor-independent workspace information
- Linux `/proc` and `/sys` metrics with bounded refresh intervals
- Configurable HTTPS weather provider
- Reduced-motion and CRT/glitch-effect preferences

## Local quickstart

Requirements:

- Linux with a Wayland compositor
- Quickshell and its Qt runtime
- Optional: an MPRIS player and a configured weather provider

Run the source entry point:

```sh
qs --version
qs -p ./Dashboard.qml
```

The current scaffold deliberately displays safe unavailable states where
external services are not implemented or unavailable.

## Project layout

See [`docs/DEVELOPMENT.md`](docs/DEVELOPMENT.md) for architecture and
[`docs/DESIGN_GUIDELINES.md`](docs/DESIGN_GUIDELINES.md) for visual rules.
Release and test procedures are documented in [`docs/RELEASE.md`](docs/RELEASE.md)
and [`docs/TESTING.md`](docs/TESTING.md).

## Safety and privacy

The widget does not modify existing Hyprland, Caelestia, Quickshell, or other
user configuration. Weather credentials are user-provided and must never be
committed. See [`SECURITY.md`](SECURITY.md).

## License

Source code is MIT licensed. Assets and third-party dependencies may have
separate licenses; see `assets/README.md` before adding them.
