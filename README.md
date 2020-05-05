Run with

```
docker run \
  --rm \
  -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --mount type=bind,source="$(pwd)",target=/home/developer/dev/ \
  thomet/docker-remote-dev:latest
```

It will bind the current dir into the container for development.

# Pre-installed tools

- docker
- git
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [tmate](https://tmate.io/)
- [lazydocker](https://github.com/jesseduffield/lazydocker)
- [lazygit](https://github.com/jesseduffield/lazygit)
- vim + [Janus](https://github.com/carlhuda/janus)
- [mycli](https://www.mycli.net/)

