# /home/danielqu/PycharmProjects 对应自己宿主机上代码所在的目录，/workspace/ClipCap-Chinese 为容器里代码所在的目录
docker run -itd -v /home/danielqu/PycharmProjects/ClipCap-Chinese/datasets:/workspace/ClipCap-Chinese/datasets \
   -v /home/danielqu/PycharmProjects/ClipCap-Chinese/output:/workspace/ClipCap-Chinese/output \
   -v /home/danielqu/PycharmProjects/ClipCap-Chinese/pretrain_models:/workspace/ClipCap-Chinese/pretrain_models \
 harbor.tiduyun.com/qujun/clipcap-chinese:pytorch-1.11

# 或者把整个目录都映射进去
docker run -itd -v /home/danielqu/PycharmProjects/ClipCap-Chinese:/workspace/ClipCap-Chinese \
 harbor.tiduyun.com/qujun/clipcap-chinese:pytorch-1.11