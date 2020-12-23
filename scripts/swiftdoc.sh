#!/bin/bash

set -eu

ROOT=$(cd $(dirname $0)/.. && pwd)
MODULE_NAME="SwiftDocExample"
TARGET_DIR_NAME="SwiftDocExample/SwiftDocExample/"
GENERATE_DIR_NAME="$ROOT/docs"
BASE_URL="./"
FORMAT="commonmark"

if ! $(which swift-doc >/dev/null 2>&1); then
    echo "swift-doc is not installed"
    echo "Installing swift-doc formulas ..."
    brew bundle
fi

swift doc generate $TARGET_DIR_NAME --module-name $MODULE_NAME --output $GENERATE_DIR_NAME --format $FORMAT --base-url $BASE_URL

mv $GENERATE_DIR_NAME/Home.md $GENERATE_DIR_NAME/index.md 