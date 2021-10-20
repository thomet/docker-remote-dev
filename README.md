Run with

```
docker compose run --rm shell
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
- [fx](https://github.com/antonmedv/fx)

# Available host services
- Docker Socket (will give you access to docker)
- SSH AUTH Socket (will use your local ssh agent to authenticate e.g. for private git repositories)
