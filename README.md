# Docker Pipenv Example

## 執行

```bash=
# Build docker image
docker build -t docker-pipenv .

# Run docker image
docker run --net=bridge -it -p 5000:5000 docker-pipenv
```
