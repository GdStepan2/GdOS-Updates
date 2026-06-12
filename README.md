# GdOS Updates

Public binary update channel for signed GdOS releases. Source repositories
remain private.

The client should download a signed `stable.json`, verify its signature, and
only then install packages from the configured GdOS APT repository.

Never publish unsigned production metadata.

## Signing

The GdOS client verifies `stable.json.sig` with the public key embedded in
the ISO. The matching private key must stay outside Git:

```bash
./sign-release.sh /path/to/update-private.pem
```

Installed systems read `stable.json` from this public repository. Release
metadata is signed, and every package hash is verified before installation.
