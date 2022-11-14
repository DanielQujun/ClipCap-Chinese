docker build --network=host  --build-arg HTTPS_PROXY=http://127.0.0.1:7890 \
--build-arg HTTP_PROXY=http://127.0.0.1:7890 --build-arg https_proxy=http://127.0.0.1:7890 \
 --build-arg http_proxy=http://127.0.0.1:7890 \
 -t clipcap-chinese:pytorch-1.11  .
