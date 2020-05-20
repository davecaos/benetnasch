# :musical_score: Mime de Benetnasch Eta
## Mimetypes library for Gleam (A statically typed language for the Erlang VM)

This library is a port of on @benoitc 's https://github.com/benoitc/mimerl


![tumblr_nksjt6OcmH1s6cql7o1_500](https://user-images.githubusercontent.com/6124495/82167134-311ebf80-9891-11ea-97f5-56a630b497b5.gif)

## Minimal example

```rust
import benetnasch

    let mimetype = benetnasch.extension_to_mimetype("123")

    let extensions  = benetnasch.mimetype_to_extentions("application/vnd.lotus-1-2-3")

```
## Quick start

```sh
# Build the project
rebar3 compile

# Run the eunit tests
rebar3 eunit

# Run the Erlang REPL
rebar3 shell
```
