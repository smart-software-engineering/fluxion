# Fluxion

[![Elixir Workflow](https://github.com/smart-software-engineering/fluxion/actions/workflows/elixir.yml/badge.svg?branch=main)](https://github.com/smart-software-engineering/fluxion/actions/workflows/elixir.yml)[![Coverage Status](https://coveralls.io/repos/github/smart-software-engineering/fluxion/badge.svg?branch=main)](https://coveralls.io/github/smart-software-engineering/fluxion?branch=main)

##  Features

This application has three features at its core:

* Client and Project management (On-Boarding)
  * Define features together with the client
  * Break down the features into user stories
  * Simplified guessing of the user stories
  * Create an automatic offer with a price per feature
  * Client selects features he wants to have developped next
  * Developer (single/team) sets estimated deadline
  * Client signs contracts
  * Project starts in Kanban
  * In parallel more features are discussed and
    prepared with the client
* A kanban project per project (with access for the client)
  * Only features signed by the client should be visible
  * Bugs will appear also here!
* Ticketing system
  * Incoming Email
  * Incoming via App

## Development

The application is developped with Phoenix Framework.
You need to have erlang, elixir and probably node installed.

With `asdf` you can just execute an `asdf install` and
start working.

To start your Phoenix server:

* Run `mix setup` to install and setup dependencies
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Links

* Running application: https://fluxion.fly.dev
* Phoenix Framework: https://www.phoenixframework.org/
