# Contributing

## Development rules

- Use PascalCase for QML type filenames and camelCase for properties, IDs and
  functions.
- Keep one clear UI responsibility per component.
- Keep system, media, network and compositor access in `services/`.
- Do not commit credentials, generated files, private paths or user settings.
- Preserve graceful empty and unavailable states.

## Changes

1. Create a focused branch from the default branch.
2. Update documentation and tests with behavior changes.
3. Run the checks in `docs/TESTING.md`.
4. Use a clear imperative commit message and open a pull request.

Store-specific requirements are not considered satisfied until verified against
the current QS Store CLI and developer dashboard.
