# Release

## Current status

`packaging/manifest.json` and `scripts/package.sh` are explicitly provisional.
The exact manifest schema, widget ID restrictions, ZIP root and asset limits
must be confirmed from the current QS Store dashboard and CLI.

The locally installed `qs-store` currently rejects this placeholder because it
does not yet contain the required `schemaVersion` (and may report additional
required fields after that). This is an expected scaffold state, not a passing
release validation.

## Pre-release sequence

1. Confirm `qs-store --help` and current store documentation.
2. Run `qs -p ./Dashboard.qml` in a clean environment.
3. Package from a reviewed, tagged source commit.
4. Validate the directory and ZIP using the installed CLI syntax.
5. Install, enable, disable, upgrade, rollback and remove in a separate clean
   profile.
6. Record source commit and SHA-256 for the published artifact.

Never call an artifact store-compliant before CLI validation and clean install
have passed. Do not overwrite unrelated Quickshell or compositor files.
