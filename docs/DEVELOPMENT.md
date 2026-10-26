# Development

## Architecture

`Dashboard.qml` is the single source entry point and owns the shell window and
page navigation. Pages in `components/` compose focused cards. Shared data is
provided by `services/`; pages must not independently spawn processes or make
network requests. `theme/` contains the visual contract.

```text
Dashboard.qml
├── components/pages       UI composition and navigation
├── components/cards       one-purpose information cards
├── services               system, MPRIS, weather and workspace providers
└── theme                  tokens and reusable visual values
```

## Service boundaries

Services must expose an explicit availability state and tolerate missing
permissions, unsupported compositors, offline networks and missing players.
Refresh intervals are starting values only: clock 1s when needed, CPU/RAM 2s,
disk/network 5s, weather 15 minutes, and event-driven media/workspace data.

Persistent preferences must use a documented app-owned location. Never read or
write another shell's configuration.

## Running locally

```sh
qs --version
qs -p ./Dashboard.qml
```

Use the current Quickshell/Qt versions in bug reports. Do not assume the QS
Store package schema from `packaging/manifest.json`; it is a placeholder.
