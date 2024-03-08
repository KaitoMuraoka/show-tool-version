#!/bin/zsh

typeset -A tools
tools=(
  Homebrew "echo 'Homebrew version\n\n' && brew -v"
)

for tool in "${(@k)tools}"; do
  eval "${tools[$tool]}"
done

echo '==============================\n✅ FINISH\n\n'
