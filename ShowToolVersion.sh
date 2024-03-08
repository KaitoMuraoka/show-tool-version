#!/bin/zsh

typeset -A tools
tools=(
  "Homebrew"       "brew -v"
  "CocoaPods"      "pod --version"
  "Homebrew List"  "brew list --version"
  "Docker"         "docker --version"
)

for tool_name version_commmand in "${(@kv)tools}"; do
  echo "==============================\n🚀"
  echo "$tool_name version\n\n"
  echo "$version_commmand : \n"
  eval $version_commmand
done

echo '==============================\n✅ FINISH\n\n'
