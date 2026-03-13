---@meta

callback = {}

callback.on_scripts_loaded = {}
---@param callback fun(): nil
function callback.on_scripts_loaded:set(callback) end
---@param callback fun(): nil
function callback.on_scripts_loaded:unset(callback) end

callback.on_pre_createmove = {}
---@param callback fun(cmd: CUserCmd): nil
function callback.on_pre_createmove:set(callback) end
---@param callback fun(cmd: CUserCmd): nil
function callback.on_pre_createmove:unset(callback) end

callback.on_createmove = {}
---@param callback fun(cmd: CUserCmd): nil
function callback.on_createmove:set(callback) end
---@param callback fun(cmd: CUserCmd): nil
function callback.on_createmove:unset(callback) end

callback.on_frame = {}
---@param callback fun(): nil
function callback.on_frame:set(callback) end
---@param callback fun(): nil
function callback.on_frame:unset(callback) end

callback.on_draw = {}
---@param callback fun(): nil
function callback.on_draw:set(callback) end
---@param callback fun(): nil
function callback.on_draw:unset(callback) end

callback.on_add_entity = {}
---@param callback fun(ent: entity): nil
function callback.on_add_entity:set(callback) end
---@param callback fun(ent: entity): nil
function callback.on_add_entity:unset(callback) end

callback.on_remove_entity = {}
---@param callback fun(ent: entity): nil
function callback.on_remove_entity:set(callback) end
---@param callback fun(ent: entity): nil
function callback.on_remove_entity:unset(callback) end

callback.on_pre_framestage = {}
---@param callback fun(): nil
function callback.on_pre_framestage:set(callback) end
---@param callback fun(): nil
function callback.on_pre_framestage:unset(callback) end

callback.on_post_framestage = {}
---@param callback fun(): nil
function callback.on_post_framestage:set(callback) end
---@param callback fun(): nil
function callback.on_post_framestage:unset(callback) end

callback.on_received_net_message = {}
--- https://github.com/SteamDatabase/Protobufs/blob/4423890a7ade0b3e0b167ca4622d8e73c9814adf/deadlock/citadel_gameevents.proto#L5
--- local json = protobuf.decodeToJSONfromObject(msg)
---@param callback fun(id: integer, msg: lightuserdata): nil
function callback.on_received_net_message:set(callback) end
---@param callback fun(id: integer, msg: lightuserdata): nil
function callback.on_received_net_message:unset(callback) end

---@alias particle_create {entity: entity|nil, entity_for_modifiers: entity|nil, index: integer, name: string, hash: integer}

callback.on_particle_create = {}
---@param callback fun(data: particle_create): nil
function callback.on_particle_create:set(callback) end
---@param callback fun(data: particle_create): nil
function callback.on_particle_create:unset(callback) end

---@alias particle_update {entity: entity|nil, index: integer, attach_type: integer, attachment: integer, include_wearables: boolean, control_point: integer, position: Vector}

callback.on_particle_update = {}
---@param callback fun(data: particle_update): nil
function callback.on_particle_update:set(callback) end
---@param callback fun(data: particle_update): nil
function callback.on_particle_update:unset(callback) end

---@alias particle_update_transform {index: integer, interpolation_interval: integer,  control_point: integer, position: Vector, orientation: Angle}

callback.on_particle_update_transform = {}
---@param callback fun(data: particle_update_transform): nil
function callback.on_particle_update_transform:set(callback) end
---@param callback fun(data: particle_update_transform): nil
function callback.on_particle_update_transform:unset(callback) end

---@alias particle_destroy {index: integer, destroy_immediately: boolean}

callback.on_particle_destroy = {}
---@param callback fun(data: particle_destroy): nil
function callback.on_particle_destroy:set(callback) end
---@param callback fun(data: particle_destroy): nil
function callback.on_particle_destroy:unset(callback) end

callback.on_add_modifier = {}
---@param callback fun(mod: modifier, target: entity|nil, owner: entity|nil): nil
function callback.on_add_modifier:set(callback) end
---@param callback fun(mod: modifier, target: entity|nil): nil
function callback.on_add_modifier:unset(callback) end

callback.on_remove_modifier = {}
---@param callback fun(mod: modifier): nil
function callback.on_remove_modifier:set(callback) end
---@param callback fun(mod: modifier): nil
function callback.on_remove_modifier:unset(callback) end

---@alias key_event {key: Enum.ButtonCode, event: Enum.KeyEvent}

callback.on_key_event = {}
---@param callback fun(data: key_event): boolean
function callback.on_key_event:set(callback) end
---@param callback fun(data: key_event): boolean
function callback.on_key_event:unset(callback) end

---@alias bullet_create {weapon_name: string, shooter: entity, start_pos: Vector, direction: Vector, radius: number, speed: number, max_distance: number}

callback.on_bullet_create = {}
---@param callback fun(data: bullet_create): nil
function callback.on_bullet_create:set(callback) end
---@param callback fun(data: bullet_create): nil
function callback.on_bullet_create:unset(callback) end