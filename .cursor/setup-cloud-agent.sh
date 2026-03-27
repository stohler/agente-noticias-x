#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
import sys

if sys.version_info < (3, 11):
    raise SystemExit(
        f"Python 3.11+ e obrigatorio, versao atual: {sys.version_info.major}.{sys.version_info.minor}.{sys.version_info.micro}"
    )
print(f"Python OK: {sys.version_info.major}.{sys.version_info.minor}.{sys.version_info.micro}")
PY

python3 -m ensurepip --upgrade
python3 -m pip install --upgrade pip
python3 -m pip install /workspace
