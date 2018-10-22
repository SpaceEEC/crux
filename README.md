# Crux - Umbrella Repository

> This repository is responsible for generating the umbrella documentation available here: https://curx.randomly.space

# Child Repositories:

## Crux Gateway

Handles Discord's sharded gateway api, including reconnecting, zombie connections, and ratelimiting.  
Forwards normalized packets as maps with atom keys via gen_stage producers. (One per shard)

Links:
 - [Hex](https://hex.pm/packages/crux_gateway)
 - [Documentation](https://hexdocs.pm/crux_gateway)
 - [Repository](https://github.com/SpaceEEC/crux_gateway)
 - [Umbrella Documentation](https://crux.randomly.space/Crux.Gateway.html)

## Crux Rest

Handles Discord's RESTful bot api, including queues, rate limits, and retries.  
Returns transformed `Crux.Structs` directly. (Blocks calling process when rate limitted)

Links:
 - [Hex](https://hex.pm/packages/crux_rest)
 - [Documentation](https://hexdocs.pm/crux_rest)
 - [Repository](https://github.com/SpaceEEC/crux_rest)
 - [Umbrella Documentation](https://crux.randomly.space/Crux.Rest.html)

## Crux Structs

Provides Elixir Structs for Discord's api objects, as well as helper structs.

Links:
 - [Hex](https://hex.pm/packages/crux_structs)
 - [Documentation](https://hexdocs.pm/crux_structs)
 - [Repository](https://github.com/SpaceEEC/crux_structs)
 - [Umbrella Documentation](https://crux.randomly.space/Crux.Structs.html)

## Crux Cache

Provides caches to add, fetch, update, and remove `Crux.Structs`.
Also provides a behaviour to implement custom caches which may override the default ones. (For example using redis instead of ets)

Links:
 - [Hex](https://hex.pm/packages/crux_cache)
 - [Documentation](https://hexdocs.pm/crux_cache)
 - [Repository](https://github.com/SpaceEEC/crux_cache)
 - [Umbrella Documentation](https://crux.randomly.space/Crux.Cache.html)