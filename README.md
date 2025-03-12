# Docker for wget2

Upstream: https://gitlab.com/gnuwget/wget2/

### Build the image locally

```bash
git clone https://github.com/rytiszig/docker-wget2.git
docker buildx build -t rytiszig/wget2:latest --load .
```

### Run the image:

```bash
docker run --rm rytiszig/wget2 --version
```

### Build specific version && push to Docker Hub:

```bash
VERSION=v2.1.0
docker login
docker buildx build --platform linux/amd64,linux/arm64 --build-arg VERSION=${VERSION#v} -t rytiszig/wget2:$VERSION -t rytiszig/wget2:latest ./ --push
```
