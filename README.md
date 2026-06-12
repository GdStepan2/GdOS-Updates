# GdOS Updates

Private test channel for GdOS update metadata.

The client should download a signed `stable.json`, verify its signature, and
only then install packages from the configured GdOS APT repository.

Never publish unsigned production metadata.

## Signing

The GdOS client verifies `stable.json.sig` with the public key embedded in
the ISO. The matching private key must stay outside Git:

```bash
./sign-release.sh /path/to/update-private.pem
```

For installed machines, publish `stable.json`, `stable.json.sig`, release
notes and `.deb` packages on a public HTTPS endpoint. A private GitHub
repository cannot be read by clients without exposing a personal token.
