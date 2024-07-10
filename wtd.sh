#!/bin/bash

write_that_down () {
  if [ "${1}" == "--list" ]; then
    if command -v "tree" &> /dev/null; then
      cd "${HOME}/.notes"
      tree -a --noreport
      exit
    fi

    ls -R "${HOME}/.notes"
    exit
  fi

  if [ ! -d "${HOME}/.notes" ]; then
    mkdir "${HOME}/.notes"
  fi

  if [ ! -d "${HOME}/.notes/$(date +'%Y-%m-%d')" ]; then
    mkdir "${HOME}/.notes/$(date +'%Y-%m-%d')"
  fi

  "${EDITOR}" "${HOME}/.notes/$(date +'%Y-%m-%d')/${1}.md"
}

write_that_down "${1}"
