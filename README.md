Dan's Phenomenal Dev Box
========================

...assuming you think it's "phenomenal" to use Packer to build a Digital Ocean image.

Usage
-----

Save your token to file (do once)

```
echo <your-digitalocean-api-token-for-devbox> > ~/.digitalocean-api-token-devbox
sudo chown root ~/.digitalocean-api-token-devbox
sudo chmod 600 ~/.digitalocean-api-token-devbox
```

Set API token environment variable (once per shell you want to run `packer` from)

```
. load-token
```

Test and build

```
./build
```

Then go to DigitalOcean and create a droplet from the image.
