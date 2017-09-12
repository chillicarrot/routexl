# Routexl

## Usage

```
Routexl.Distances.post( [{"locations", ["[{\"address\":\"The Hague, The Netherlands\",\"lat\":\"52.05429\",\"lng\":\"4.248618\"},{\"address\":\"The Hague, The Netherlands\",\"lat\":\"52.076892\",\"lng\":\"4.26975\"}]"]}])

# Routexl.Status.get/0

# Routexl.Tour.post/1
```

```
config :routexl, api_key: "XXX"
```

For API details check [Routexl API](https://www.routexl.nl/blog/api).

## Installation

The package can be installed
by adding `routexl` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:routexl, "~> 0.1.0"}]
end
```
The docs can
be found at [https://hexdocs.pm/routexl](https://hexdocs.pm/routexl).

