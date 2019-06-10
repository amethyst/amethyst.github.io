initSidebarItems({"enum":[["AnimationCommand","Animation command"],["BlendMethod","Blend method for sampler blending"],["ControlState","State of animation"],["DeferStartRelation","Defer the start of an animation until the relationship has done this"],["EndControl","Control handling of animation/sampler end"],["InterpolationFunction","Supported interpolation functions"],["MaterialChannel","Channels that are animatable on `Material`"],["MaterialPrimitive","Sampler primitive for Material animations Note that material can only ever be animated with `Step`, or a panic will occur."],["SamplerPrimitive","Sampler primitive"],["SpriteRenderChannel","Channels that are animatable on `SpriteRender`"],["SpriteRenderPrimitive","Sampler primitive for SpriteRender animations Note that sprites can only ever be animated with `Step`, or a panic will occur."],["StepDirection","Used when doing animation stepping (i.e only move forward/backward to discrete input values)"],["TransformChannel","Channels that can be animated on `Transform`"]],"fn":[["get_animation_set","Get the animation set for an entity. If none exists, one will be added. If entity is invalid, (eg. removed before) None will be returned."]],"struct":[["AnimatablePrefab","`PrefabData` for full animation support"],["Animation","Defines a single animation."],["AnimationBundle","Bundle for a complete animation setup including sampler interpolation and animation control."],["AnimationControl","Controls the state of a single running animation on a specific component type"],["AnimationControlSet","Contains all currently running animations for an entity."],["AnimationControlSystem","System for setting up animations, should run before `SamplerInterpolationSystem`."],["AnimationHierarchy","Defines the hierarchy of nodes that a single animation can control. Attached to the root entity that an animation can be defined for. Only required for animations which target more than a single node or entity."],["AnimationHierarchyPrefab","`PrefabData` for loading `AnimationHierarchy`."],["AnimationPrefab","`PrefabData` for loading a single `Animation`"],["AnimationSet","Attaches to an entity that have animations, with links to all animations that can be run on the entity. Is not used directly by the animation systems, provided for convenience."],["AnimationSetPrefab","`PrefabData` for loading `Animation`s as part of an `AnimationSet`."],["Joint","Joint, attach to an entity with a `Transform`"],["JointPrefab","`PrefabData` for loading `Joint`s"],["RestState","Define the rest state for a component on an entity"],["Sampler","Sampler defines a single animation for a single channel on a single component"],["SamplerControl","Control a single active sampler"],["SamplerControlSet","Sampler control set, containing a set of sampler controllers for a single component."],["SamplerInterpolationSystem","System for interpolating active samplers."],["SamplingBundle","Bundle for only the sampler interpolation."],["Skin","Skin, attach to the root entity in the mesh hierarchy"],["SkinPrefab","`PrefabData` for loading `Skin`s"],["SkinnablePrefab","`PrefabData` for full skinning support"],["VertexSkinningBundle","Bundle for vertex skinning"],["VertexSkinningSystem","System for performing vertex skinning."]],"trait":[["AnimationSampling","Master trait used to define animation sampling on a component"],["ApplyData","Extra data to extract from `World`, for use when applying or fetching a sample"],["InterpolationPrimitive","Interpolation primitive, defines basic arithmetic needed for interpolation."]],"type":[["AnimationProcessor","Asset storage processor for `Animation`"],["SamplerProcessor","Asset storage processor for `Sampler`"]]});