+++
+++

{% feature(title="High Performance" image="/assets/3d_example.jpg" alt="3D Example Screenshot" class="separated") %}
Amethyst uses a rigorous [Entity Component System (ECS)](https://en.wikipedia.org/wiki/Entity%E2%80%93component%E2%80%93system) architecture to organize game logic. This abstracts away some of the parallelism work, allowing easier exploitation of multi-threading in games. The ECS is rich in features and very efficient, as it never does any memory locking while remaining entirely thread-safe.
{% end %}

{% feature(title="Built for 2D and 3D" image="/assets/2d_example.jpg" alt="2D Example Screenshot" class="separated reverse") %}
Amethyst uses [gfx-rs](https://github.com/gfx-rs/gfx") to render graphics with OpenGL, and soon Vulkan and Metal. It is meant to be used for 2D and 3D, with various utilities for both types of games. It should be beginner friendly but also allow more advanced uses such as custom render passes and GLSL shaders. 
{% end %}

{% feature(title="A Stable Foundation" image="/assets/rust_example.jpg" alt="Rust Example Code" class="separated") %}
Thanks to the [Rust programming language](https://www.rust-lang.org/), Amethyst uses all CPU cores to run its internals and logic. A lot of optimizations have yet to be done, but the current status is already showing great potential. 
{% end %}

{% feature(title="Free with very permissive usage") %}
Amethyst is open source and free software. You can use, read, modify, distribute its source code under the permissive **MIT** and **Apache 2.0 licenses**, and it is important to us that it remains that way. The strength of the community keeps Amethyst going forward, through the contributions of [awesome people](https://github.com/amethyst/amethyst/graphs/contributors). Come visit us on[GitHub](https://github.com/amethyst/amethyst)!
{% end %}

{{ sponsor_list() }}

{% feature(title="Get Started" logo="true" class="center") %}
You can easily get started using [our book guide](/book/master) which goes through the basics of creating a game using Amethyst. If you need any help on the way, feel free to visit [our community forums](https://community.amethyst-engine.org/) and [our Discord server](https://discord.gg/amethyst)!
{% end %}
