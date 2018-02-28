# docker-cosfs
docker image for cosfs


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


## Test With Tensorflow
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
-p 6006:6006 \
ccr.ccs.tencentyun.com/leiiwang/tensorflow-with-cosfs:1.5.0 \
tensorboard --logdir=/data/estimator/output
```