FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel

ADD . /workspace/ClipCap-Chinese

RUN gpg --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC && \
    gpg --export --armor A4B469963BF863CC | apt-key add -  && \
    apt-get update && apt-get install -y git

RUN pip install --upgrade  pip && pip install -r /workspace/ClipCap-Chinese/requirements.txt
# 补充CLIP_prefix_caption项目所需的cog
ADD cog-0.0.20 /tmp/cog-0.0.20
RUN pip install /tmp/cog-0.0.20/python


