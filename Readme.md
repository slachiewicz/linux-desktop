# linux-desktop

A ready linux desktop with a VNC-over-WebSocket interface, deployable
with one command:

To deploy it, [install now](https://zeit.co/download) and run:

```bash
now now-examples/linux-desktop
```

[Now](https://zeit.co/now) will give you a unique, private URL for
your cloud deployment. It will get served over HTTP/2 and SSL automatically.

Ships with
- Firefox (ESR flavor)
- Fluxbox (from base image)
- xterm (from base image)

Powered by:
- [noVNC](https://github.com/novnc) by [Joel Martin](https://twitter.com/bus_kanaka) [and team](https://github.com/novnc/novnc#authorscontributors)
- [websockify-uws](https://github.com/zeit/websockify-uws) by [Joel Martin](https://twitter.com/bus_kanaka)
  and [Guillermo Rauch](https://github.com/rauchg)
- Alpine Linux

## Testing

To run it locally, run:

```
docker build -t ld .
docker run -t -i -p 3000:3000 ld
```

and point your browser to `http://localhost:3000`

## Credits

Based on the [alpine-vnc](https://github.com/danielguerra69/alpine-vnc) Dockerfile by Daniel Guerra

Authored by [Guillermo Rauch](https://github.com/rauchg)

## License

MIT – Copyright Zeit, Inc ® 2017
