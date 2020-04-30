Run with

```
docker run --rm -it --mount type=bind,source="$(pwd)",target=/home/developer/dev/ thomet/docker-remote-dev:latest
```

It will bind the current dir into the container for development.

