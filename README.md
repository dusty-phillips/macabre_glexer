# macabre_glexer

Fork of [glexer](https://github.com/DanielleMaywood/glexer) (MIT) that ports
the library to [macabre](https://github.com/anomalyco/macabre)'s Python target.
The public API and all pure Gleam code are unchanged; only the
Erlang/JavaScript FFI was replaced with the Python externals in
`src/glexer_bindings.py`. Byte-oriented string operations mirror the Erlang
(`binary:part`) UTF-8 semantics.

Because the module is still named `glexer`, existing code keeps working with:

```gleam
import glexer
```

## Installation

Add it to your macabre project (macabre resolves dependencies from git), along
with `macabre_stdlib`:

```toml
[dependencies]
macabre_stdlib = { git = "git@github.com:dusty-phillips/macabre_stdlib.git", ref = "main" }
macabre_glexer = { git = "git@github.com:dusty-phillips/macabre_glexer.git", ref = "main" }
```

## License

MIT, matching upstream glexer.
## Note on dependencies

`glexer` imports `splitter`, which is not yet ported to macabre's python target.
It is on the deferred-transitive-deps list; `macabre_glexer` will not be
compilable by macabre until a `macabre_splitter` fork exists and is listed as a
git dependency in your project.
