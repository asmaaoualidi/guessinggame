#!/usr/bin/env bash
#guessinggame.sh

count_files() {
  find . -maxdepth 1 -type f ! -name ".*" | wc -l
}

target=$(count_files)

echo "How many files are in the current directory?"
while true; do
  echo -n "Enter your guess: "
  read -r guess

  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a non-negative integer."
    continue
  fi

  if [[ "$guess" -lt "$target" ]]; then
    echo "Too low. Try again."
  elif [[ "$guess" -gt "$target" ]]; then
    ec
