# 使用 n8n 官方的 python runner 作為基底
FROM n8nio/runners:2.1.5

# 切換到 root 以安裝套件
USER root

# 複製 requirements.txt 並安裝 Python 套件
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 切換回非同步使用者 (通常是 node 或 n8n)
USER 1000