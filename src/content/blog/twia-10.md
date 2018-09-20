+++
title = "This Year in Amethyst 10"
description = "Tenth issue of This Week in Amethyst."
date = 2017-09-16
aliases = ["/2017/09/16/twia-10.html"]
+++
> News from `Sep 11, 2016` – `Sep 16, 2017`

Hello and welcome to the `10th` issue of *This <strike>Week</strike> Year in
Amethyst*, a blog bringing you the latest changes and updates regarding the
Amethyst game engine every <strike>week</strike> year. If you have any
suggestions or ideas, feel free to voice them [on GitHub][gh] or
[the Gitter chat][gc].

[gh]: https://github.com/amethyst/website
[gc]: https://gitter.im/orgs/amethyst/rooms

`145` pull requests [in the engine][ep] landed this <strike>week</strike> year.

[ep]: https://github.com/amethyst/amethyst/pulls?q=is:merged+closed:2016-09-11..2017-10-03

## Announcements


Version 0.5.1 was released! A lot of work was done during this year.
Asset management was rewritten by [@torkleyy][tc] in [#244](https://github.com/amethyst/amethyst/pull/244)
now assets can be loaded asynchronously using futures.
Audio support was added by [@Xaeroxe][xr] in [#265](https://github.com/amethyst/amethyst/pull/265)
Renderer was rewritten by [@ebkalderon][ek] in [#285](https://github.com/amethyst/amethyst/pull/285)
now we have better design and parallel data rendering.
Input system was overhauled by [@Xaeroxe][xr] in [#247](https://github.com/amethyst/amethyst/pull/247),
[@261](https://github.com/amethyst/amethyst/pull/261), and [#274](https://github.com/amethyst/amethyst/pull/274) now we have input rebinding.
Thanks to [@torkleyy][tc]'s work in [#269](https://github.com/amethyst/amethyst/pull/269) we now use RON instead of YAML for configs.

## What's cooking on develop?

### Notable additions

* Input system has been even further refactored to be event driven and generic by [@Xaeroxe][xr] in [#385](https://github.com/amethyst/amethyst/pull/385)
* Specs aware renderer pipeline added by [@omni-viral][ov] in [#317](https://github.com/amethyst/amethyst/pull/317)
* ECS bundles added by [@Rhuagh][rh] in [#364](https://github.com/amethyst/amethyst/pull/364) (These bundle up related components and resources,
making it easier to get started with amethyst.)

### Breaking changes

* Asset management was rewritten by [@torkley][tc]
* RON instead of YAML is used as config format thanks to [@torkleyy][tc]
* Input system was overhauled by [@Xaeroxe][xr]
* Renderer was completely rewritten by [@eyalkalderon][ek] with help from [@omni-viral][ov]

## Calls for participation

* We could really use some help with getting our [tools repository](https://github.com/amethyst/tools) and [the book](https://github.com/amethyst/amethyst/tree/master/book)
up to date, any help here would be greatly appreciated!

[tc]: https://github.com/torkleyy
[xr]: https://github.com/Xaeroxe
[ek]: https://github.com/ebkalderon
[ov]: https://github.com/omni-viral
[rh]: https://github.com/Rhuagh


## New amethyst organization members

* [omni-viral](https://github.com/omni-viral)
* [torkleyy](https://github.com/torkleyy)
* [Xaeroxe](https://github.com/Xaeroxe)

## New contributors

* [Xaeroxe](https://github.com/Xaeroxe)
* [torkleyy](https://github.com/torkleyy)
* [omni-viral](https://github.com/omni-viral)
* [Rhuagh](https://github.com/Rhuagh)
* [vitvakatu](https://github.com/vitvakatu)
* [mechaxl](https://github.com/mechaxl)
* [Lionex](https://github.com/Lionex)
* [derekdreery](https://github.com/derekdreery)
* [Binero](https://github.com/Binero)
* [Object905](https://github.com/Object905)
* [ivandardi](https://github.com/ivandardi)
* [anderejd](https://github.com/anderejd)
* [ahmedcharles](https://github.com/ahmedcharles)
* [stenverbois](https://github.com/stenverbois)
* [aochagavia](https://github.com/aochagavia)
* [minecrawler](https://github.com/minecrawler)
* [Cldfire](https://github.com/Cldfire)
* [ForsakenHarmony](https://github.com/ForsakenHarmony)
* [scorbeil](https://github.com/scorbeil)
* [Hammster](https://github.com/Hammster)
* [jFransham](https://github.com/jFransham)
* [vvuk](https://github.com/vvuk)
* [sekhat](https://github.com/sekhat)
* [palodequeso](https://github.com/palodequeso)
* [cooperra](https://github.com/cooperra)

## New issues

It's been so long since one of these posts has been written that most of our issues qualify as "new" so this section is being omitted from this post.
