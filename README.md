# Experiments with the Julia programming language

## hello.jl
Your basic hello world.
Run with `julia hello.jl`

## testing/`main_test.jl`
Run with `julia main_test.jl`.

## atoi
String to integer.
try/catch and Logging

## shape.jl
Demonstrates use of modules.

Run:

```
julia shape.jl
```

Within the REPL (Read,Evaluate,Print Loop):

`include` the main file. This will also execute the code.

`include("shape.jl")` to access `Shape.*` eg. `Shape.Rectangle`.

```
include("shape-main.jl")
```

## http
http `get` and non-blocking server examples.
`julia serve_run.jl`

I ran a benchmark on my 4-core i5 computer and it served about 6,000 requests per second.

Similar code with `go` served about 9,000 requests per second.

## async
Demonstrates the use of `julia` coroutines.

```
julia async_run.jl
```
