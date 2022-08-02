# NGC Docker for MACOS with Support for running mounting

You need to copy you $HOME/.ngc/config to this folder and then

build with

```
docker build -t ngcdocker:arm64 .
``` 

run with 

```
docker run -it --rm --privileged ngcdocker:arm64 /bin/bash
```

note that `--privileged` is required to run this command for fuse
