#!/usr/bin/env sh
set -euo pipefail

main() {
  chown agent /agent
  chmod 700 /agent

  exec sudo -n -u agent -H ssh-agent -a /agent/agent.sock -d
}

main "$@"
