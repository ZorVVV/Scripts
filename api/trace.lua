---@meta

---@class trace_t
---@field fraction number
trace_t = {}

---@return entity
function trace_t:hit_entity() end

---@return string
function trace_t:hitbox_name() end

---@param ent entity
---@param full_trace_distance number
---@return boolean
function trace_t:is_visible_entity(ent, full_trace_distance) end

---@return boolean
function trace_t:is_vertical_normal() end

---@class trace
trace = {}

---@param start Vector
---@param end_ Vector
---@param with integer
---@param exclude integer
---@param as integer
---@param object_set_mask integer
---@param collision_group integer
---@param ignore_callback fun(ent: entity): boolean
---@return trace_t
function trace.line(start, end_, with, exclude, as, object_set_mask, collision_group, ignore_callback) end

---@param start Vector
---@param end_ Vector
---@param min Vector
---@param max Vector
---@param with integer
---@param exclude integer
---@param as integer
---@param object_set_mask integer
---@param collision_group integer
---@param ignore_callback fun(ent: entity): boolean
---@param ignore_local? boolean
---@return trace_t
function trace.hull(start, end_, min, max, with, exclude, as, object_set_mask, collision_group, ignore_callback, ignore_local) end

---@param start Vector
---@param end_ Vector
---@param radius number
---@param ent entity
---@return boolean
function trace.bullet(start, end_, radius, ent) end

--- find hitbox_name substring
---@param start Vector
---@param end_ Vector
---@param radius number
---@param ent entity
---@param hitbox_name string
---@return boolean
function trace.bullet_hitbox(start, end_, radius, ent, hitbox_name) end

---@param start Vector
---@param end_ Vector
---@param radius number
---@param ent entity
---@return string
function trace.bullet_hitbox_name(start, end_, radius, ent) end


