+++
title = "These Months in Amethyst 9"
description = "Ninth issue of This Week in Amethyst."
date = 2016-09-11
aliases = ["/2016/09/11/twia-9.html"]
+++
> News from Mar 27, 2016 – Sep 11, 2016

Hello and welcome to the ninth issue of *This Week in Amethyst* (or more
accurately, *These Months in Amethyst*), a blog bringing you the latest changes
and updates regarding the Amethyst game engine every week (or a few months). If
you have any suggestions or ideas, feel free to voice them [on GitHub][gh] or
[the Gitter chat][gc].

[gh]: https://github.com/amethyst/website
[gc]: https://gitter.im/orgs/amethyst/rooms

Fifty-two pull requests, [forty-six in the engine][ep] and
[six in the tools][tp], landed these past few months.

[ep]: https://github.com/amethyst/amethyst/pulls?q=is:pr+closed:2016-03-27..2016-09-11
[tp]: https://github.com/amethyst/tools/pulls?q=is:pr+closed:2016-03-27..2016-09-11

## Announcements

From this edition onward *This Week in Amethyst* will be changed to *This Month
in Amethyst*. Lately, progress has been coming in sporadic bursts with long
periods of silence, so we thought a monthly format might suit us better.

With that out of the way, what have we been up to in the past few months? Well,
a lot, actually! We've seen versions 0.3.0 and 0.3.1 come and go. Rendering,
event handling, and the entity-component-system (ECS) libraries have stabilized
to the point where we can finally ship some real working examples starting with
the upcoming 0.4.0, including a simple version of [pong][po]! This means that
the long-awaited ["pong clone" chapter][pc] will be added soon to the book!

[po]: https://github.com/amethyst/amethyst/tree/master/examples/04_pong
[pc]: https://www.amethyst.rs/book/simple_application.html

[Lukas Schmierer][ls] has created a set of performance benchmarks for popular
ECS libraries in Rust. See the [ecs_bench][eb] repo for more details.

[ls]: https://github.com/lschmierer
[ec]: https://github.com/lschmierer/ecs_bench

## What's cooking on develop?

### Notable additions

* Both [Specs][sp] and [GFX][gf] have been fully integrated into Amethyst,
  starting with version 0.4.0.
* We have first light! A flexible [GFX-based renderer][e49] has been
  implemented. Great job, [@csherratt][cs]!
* Basic [YAML configuration][e61] loading has been written, courtesy of
  [@Aceeri][ac].
* The [amethyst_context][e63] crate has been introduced, which holds a
  collection of common resources that can be passed around different parts of
  the engine. Credit goes to [@nchashch][nc].
* [Event handling][e67] for keyboard input and window events is now supported
  via [Glutin][gl], with support for more windowing systems to come. Thanks
  again to [@nchashch][nc] for the addition!
* We now have a default [renderer processor][e89] included with the ECS, which
  enables us to write the new [pong example][po]. Thanks again to the powerhouse
  [@nchashch][nc] for the brilliant work!
* [The build tool gained the `deploy` subcommand][t23]. This builds your project
  in release mode, runs all your unit and integration tests, compresses your
  game assets, and outputs everything to a directory called `deploy`.
* The build tool is also capable of [checking for malformed game projects][t25]
  and also [tweaking Cargo features][t28] in preparation for the proposed
  "shards" extension system (issue [#34][e34]).

[sp]: https://github.com/slide-rs/specs
[gf]: https://github.com/gfx-rs/gfx

[e49]: https://github.com/amethyst/amethyst/pull/49
[cs]: https://github.com/csherratt

[e61]: https://github.com/amethyst/amethyst/pull/61
[ac]: https://github.com/Aceeri

[e63]: https://github.com/amethyst/amethyst/pull/63
[nc]: https://github.com/nchashch

[e67]: https://github.com/amethyst/amethyst/pull/67
[gl]: https://github.com/tomaka/glutin

[e85]: https://github.com/amethyst/amethyst/pull/89

[t23]: https://github.com/amethyst/tools/pull/23

[t25]: https://github.com/amethyst/tools/pull/25
[t28]: https://github.com/amethyst/tools/pull/28
[e34]: https://github.com/amethyst/amethyst/issues/34

### Breaking changes

* The `amethyst_engine` crate has been deprecated and moved to the `amethyst`
  crate.

## Calls for participation

All of these issues have mentors available. Just comment on the issue to let us
know that you are working on it!

* [Easy] [Add more content to the book][e50]
* [Moderate] [Transform Processor][e53]
* [Moderate] [Audio Processor][e60]

[e60]: https://github.com/amethyst/amethyst/issues/60
[e50]: https://github.com/amethyst/amethyst/issues/50
[e53]: https://github.com/amethyst/amethyst/issues/53

## New issues

* Engine
  * [Feature: Hot-Reloading (issue #43)][e43]
  * [Need a simple 3D rendering example (issue #79)][e79]
  * [Remove usage of String in the asset manager (issue #88)][e88]
  * [Split out backend code into separate modules (issue #89)][e89]
  * [Input Handling - State tracking (issue #104)][e104]
* Tools
  * [Print errors to stderr (issue #30)][t30]
  * [Move useful code out of CLI tool and into shared library (issue #34)][t34]

[e43]: https://github.com/amethyst/amethyst/issues/43
[e79]: https://github.com/amethyst/amethyst/issues/79
[e88]: https://github.com/amethyst/amethyst/issues/88
[e89]: https://github.com/amethyst/amethyst/issues/89
[e104]: https://github.com/amethyst/amethyst/issues/104

[t30]: https://github.com/amethyst/tools/issues/30
[t34]: https://github.com/amethyst/tools/issues/34

## New contributors

* [bjadamson](https://github.com/bjadamson)
* [Emilgardis](https://github.com/Emilgardis)
* [nchashch][nc]
* [palodequeso](https://github.com/palodequeso)
* [serprex](https://github.com/serprex)

This edition was written and edited by [@LucioFranco][lf] and [@ebkalderon][eb].

[lf]: https://github.com/LucioFranco
[eb]: https://github.com/ebkalderon
