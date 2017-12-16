ComplexNumSigil
===============

Adds a `~i` sigil for working with the `ComplexNum` package.

Documentation can be found at [https://hexdocs.pm/sci](https://hexdocs.pm/complex_num_sigil).

## Installation

This package can be installed by adding `complex_num_sigil` to your list of
dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:complex_num_sigil, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
import ComplexNumSigil

# Integers
~i{0} == ComplexNum.new(1)
~i{0+12i} == ComplexNum.new(0, 12)

# Floats
~i{0.11+0.12i} == ComplexNum(0.11, 0.12)
~i{1.1+3.12e-12i} == ComplexNum.new(1.1, 3.12e-12)

# Negative numbers
~i{-12-50i}
```
