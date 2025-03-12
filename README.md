# Docker for wget2

Upstream: https://gitlab.com/gnuwget/wget2/

### Build the image:

```bash
docker build --build-arg VERSION=${VERSION:-2.1.0} -t rytiszig/wget2:${VERSION:-2.1.0} -t rytiszig/wget2:latest ./
```

### Run the image:

```bash
docker run --rm rytiszig/wget2:${VERSION:-latest}
```

### Push the image to Docker Hub:

```bash
docker login
docker push rytiszig/wget2:${VERSION:-latest}
docker push rytiszig/wget2:latest
```
