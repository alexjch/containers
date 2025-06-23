FROM debian:latest

ENV PATH=$PATH:/opt/.venv/bin/

RUN apt-get update && \
    apt-get install -y \
    ffmpeg \
    python3.11 \
    python3.11-venv && \
    apt clean
RUN /usr/bin/python3.11 -m venv /opt/.venv
RUN /opt/.venv/bin/pip install whisperx
ADD ./common/block.sh /usr/bin/block.sh

CMD ["/usr/bin/block.sh"]
