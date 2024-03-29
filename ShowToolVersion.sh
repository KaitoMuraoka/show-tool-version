#!/bin/zsh

typeset -A tools
tools=(
  "🍺 Homebrew"       "brew -v"
  "🫘 CocoaPods"      "pod --version"
  "🍻 Homebrew List"  "brew list --version"
  " Docker"         "docker --version"
  " git" "git --version"
  " NeoVim" "nvim --version"

  # lanugage
  "ﯣ Swift"  "swift --version"
  " Python3" "python3 --version"
  " Ruby" "ruby --version"
  " Rails" "rails --version"
  " Java" "java --version"
  " Lua" "lua --version"
  " Dart" "dart --version"
  " Rust" "rust --version"
)

for tool_name version_commmand in "${(@kv)tools}"; do
  echo "==============================\n🚀"
  echo "$tool_name version\n\n"
  echo "$version_commmand : \n"
  eval $version_commmand
done

echo '==============================\n✅ FINISH\n\n'
