FROM python:3.8-slim

WORKDIR /usr/src/flexible-freeze

COPY scripts/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY scripts/flexible_freeze.py ./

ENTRYPOINT [ "python", "flexible_freeze.py" ]
