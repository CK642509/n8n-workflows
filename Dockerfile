# 使用 n8n 官方的 runner 作為基底
FROM n8nio/runners:2.1.5

# 切換到 root 以安裝套件
USER root

# # 安裝 Python 套件
# RUN cd /opt/runners/task-runner-python && \
#     uv pip install --python .venv/bin/python pypdf

# 安裝 npm 套件
COPY .npmrc /opt/runners/task-runner-javascript/.npmrc
RUN cd /opt/runners/task-runner-javascript && \
    pnpm add muhammara

# 複製自定義的 n8n-task-runners.json 配置文件
COPY n8n-task-runners.json /etc/n8n-task-runners.json

# 切換回非同步使用者 (通常是 node 或 n8n)
USER 1000