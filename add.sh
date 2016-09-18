#!/usr/bin/env sh
set -euo pipefail

[[ $(id -un) != "agent" ]] && exec sudo -n -u agent -H $0 "$@"

main() {
  export SSH_AUTH_SOCK=/agent/agent.sock

  for key in /keys/*; do
    echo ">>> Adding $key"
    ssh-add "$key"
  done

  echo "Done adding keys"
}

main "$@"
