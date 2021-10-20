# Usage
Build latest image with

```
docker build
```

Then you can run the `docker-dev` from `/bin` dir to start dev env for the current directory.

You could add the bin dir to the $PATH to make the command available:

```
export PATH=$PATH:/path/to/docker-remote-dev/bin
```

# Development

```
docker build
docker compose run --rm shell
```

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
