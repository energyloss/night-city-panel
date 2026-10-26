# Testing

## Baseline checks

```sh
qs --version
qs -p ./Dashboard.qml
```

Before release, record Linux distribution, compositor, Quickshell and Qt
versions, display scale and hardware. Add the current `qs-store` commands only
after checking `qs-store --help`.

## Required matrix

| Scenario | Expected result |
|---|---|
| Fresh install | Package is self-contained; no private paths |
| No MPRIS player | Empty media state, no crash |
| No Hyprland IPC | Neutral workspace unavailable state |
| Offline/weather error | Cached or explicit unavailable state |
| Bad credentials | No crash or credential disclosure |
| HiDPI/multiple resolutions | No clipping; readable text |
| Repeated page switching | No runaway processes/connections |
| Long-running session | No material sustained resource leak |
| Upgrade/rollback | Recoverable test configuration |
| Removal | Unrelated user data remains intact |

Performance baselines and test evidence should be added here for each release.
