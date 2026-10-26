# Security policy

Night City Panel runs with the current user's permissions. Store manifest
permissions are not a security sandbox.

## Reporting

Please do not open a public issue for a suspected vulnerability. Contact the
maintainers through the private security channel configured for the repository
and include reproduction steps, affected version, compositor, Quickshell/Qt
versions, and impact. Do not include real credentials or private host data.

## Engineering guarantees

- No privilege escalation, `sudo`, or destructive installation operations.
- No bundled API tokens or downloaded executable code.
- User-controlled process arguments and network settings are validated.
- Installation and removal leave unrelated shell configuration untouched.
- Weather provider, transmitted data and retention behavior are documented
  before the feature is released.
