#!/bin/sh
set -eu
cd "$(dirname "$0")"
PORT=${PORT-8000}
python3 -m http.server "$PORT" >/dev/null 2>&1 &
PID=$!
# Wait a moment for server
sleep 1
open "http://localhost:$PORT/index.html?file=index.md"
echo "Serving on http://localhost:$PORT (PID $PID). Press Ctrl+C to stop (or kill $PID)."
wait $PID || true
