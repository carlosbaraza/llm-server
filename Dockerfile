FROM runpod/pytorch:2.0.1-py3.10-cuda11.8.0-devel

ENV BASE_PATH=/root/llm-server

WORKDIR /root

COPY . ${BASE_PATH}
RUN chmod 755 ${BASE_PATH}/*.sh

RUN "${BASE_PATH}/compile-llamacpp.sh"

EXPOSE 8080

ENTRYPOINT [ "/root/llm-server/server.sh" ]
CMD []