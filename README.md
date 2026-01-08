# n8n Workflows

這是我的個人 n8n 工作流程管理倉庫，用於快速部署 n8n 自動化平台並管理各種工作流程。

## 專案目的

### 1. 自架 n8n 平台管理
- 集中管理 n8n 的所有配置文件
- 使用 Docker 容器化部署，確保環境一致性
- 可在任何新環境快速啟動 n8n 服務
- 簡化未來的遷移和擴展

### 2. Workflow 工作流程管理
- 整理並保存自己開發的各種自動化工作流程
- 提供給朋友或社群參考使用
- 作為工作流程的版本控制和備份
- 方便在不同 n8n 實例間快速導入

## 快速開始

### 環境需求
- Docker
- Docker Compose

### 啟動服務

1. 複製環境變數範例檔案：
```bash
cp example.env .env
```

2. 根據需求修改 `.env` 配置

3. 啟動 n8n 服務：
```bash
docker compose up -d --build
```

4. 訪問 n8n 介面：
預設情況下，可透過 `http://localhost:5678` 訪問

### 停止服務
```bash
docker compose down
```

## 專案結構

```
.
├── docker-compose.yaml    # Docker Compose 配置文件
├── Dockerfile             # 自定義 Docker 映像檔 (為了在 Task runners 呼叫第三方套件)
├── example.env            # 環境變數範例
├── init-data.sh           # DB 初始化腳本
├── n8n-task-runners.json  # Task runners 配置
├── .npmrc                 # npm 配置檔 (為了解決 npm 套件需求)
├── workflows/             # 工作流程目錄
│   └── My workflow.json   # 工作流程範例
└── README.md              # 專案說明文件
```

> 有參考[官方範例](https://github.com/n8n-io/n8n-hosting/blob/main/docker-compose/withPostgres/docker-compose.yml)

## Workflow 使用說明

本倉庫中的 `.json` 文件為 n8n 工作流程檔案，可直接導入到 n8n 平台使用。

### 導入工作流程
1. 登入 n8n 介面
2. 點擊左上角選單 → Workflows
3. 點擊 "Import from File"
4. 選擇本倉庫中的 `.json` 檔案
5. 根據需求調整節點配置
