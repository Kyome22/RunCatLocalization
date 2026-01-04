#!/usr/bin/env bash
set -e

# Find docs directory and move there.
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Deploy server.
python3 -m http.server 8000 &
SERVER_PID=$!

# Wait a moment for the server to start.
sleep 1

# Open index.html on localhost.
open "http://localhost:8000/index.html"

trap "kill $SERVER_PID" INT TERM
wait $SERVER_PID
