FROM python:3.10

# workspaceディレクトリ作成、移動
WORKDIR /workspace

# プロジェクトディレクトリにコピー
COPY requirements.txt /workspace

# 必要モジュールのインストール
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .
CMD ["gunicorn", "--reload", "-w", "1" ,"--bind", "0.0.0.0:3060", "--chdir", "/workspace/app", "wsgi:flask_api"]