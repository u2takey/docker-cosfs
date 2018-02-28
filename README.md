# docker-cosfs
docker image for cosfs

## Build

```
docker build -t u2takey/cosfs .
```

## Usage

```
docker run --rm -i -t \
-e APPID="xx" \
-e BUCKET="test" \
-e LOCAL="/data" \
-e REMOTE="http://cos.ap-shanghai.myqcloud.com" \
-e DEBUGLEVEL="info" \
-e SECRETID="xx" \
-e SECRETKEY="yy" \
--privileged \
u2takey/cosfs sleep 9999
```
