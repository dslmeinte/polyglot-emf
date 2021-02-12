#!/bin/bash

function validate {
  AJV=./node_modules/.bin/ajv
  echo "validating JSON $1 against Schema $2: "
  $AJV validate -s ../mps/solutions/schemas/source_gen/EMF/$2.json -d examples/$1.json
  echo ""
}

validate "resource1" "Ecore"
validate "resource1" "resource"

