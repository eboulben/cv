#!/bin/bash

set -euo pipefail

setup() {
  if [[ ! -d out ]]; then
    mkdir out
  fi
}

die() {
  echo "$1" >&2
  exit 1
}

compile() {
  pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out src/main.tex
}

construct_pdf() {
  compile && compile
  cp out/main.pdf cv_"${1// /_}"_emilien_boulben.pdf
}

translate() {
  local from="${1// /_}"
  local to="${2}"

  if [[ "${to}" != "en" ]] && [[ "${to}" != "fr" ]]; then
    die "Only en or fr are possible, ${to} is not known"
  fi

  if grep -q "${from}true" src/main.tex; then
    sed "s/${from}true/${to}true/" -i src/main.tex
  fi
}

setup

translate en fr
construct_pdf fr

translate fr en
construct_pdf en

exit 0
