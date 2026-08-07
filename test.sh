#!/bin/sh
# macabre targets Python, so these bindings cannot be type-checked by the stock
# `gleam` compiler (it does not recognise the python external target). Here we
# at least syntax-check the Python FFI:
set -e
python3 -m py_compile src/glexer_bindings.py
echo "ok: glexer_bindings.py compiles"