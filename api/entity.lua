---@meta

---@class entity : raw_struct
entity = {}

---@return integer
function entity:get_index() end

---@return integer
function entity:get_handle() end

---@return boolean
function entity:valid() end

---@return boolean
function entity:is_alive() end

---@return boolean
function entity:is_dormant() end

---@return string
function entity:get_class_name() end

---@return string
function entity:get_name() end

---@return Vector
function entity:get_origin() end

---@return Vector
function entity:get_velocity() end

---@return Angle
function entity:get_angles() end

---@param bone_name string
---@return Vector|nil
function entity:get_bone_pos(bone_name) end

---@return table<string, Vector>
function entity:get_bones() end

---@param attach_name string
---@return Vector|nil
function entity:get_attachment(attach_name) end

---@return integer
function entity:get_max_health() end

---@param modifier_name string
---@return modifier|nil
function entity:get_modifier(modifier_name) end

---@param modifier_name string
---@return boolean
function entity:has_modifier(modifier_name) end

---@return modifier[]
function entity:get_modifiers() end

---@param modifier_value EModifierValue
---@param def_value boolean|number
---@return boolean|number
function entity:get_modifier_value(modifier_value, def_value) end

---@param modifier_value EModifierValue
---@param def_value boolean|number
---@return boolean|number
function entity:get_sum_modifier_value(modifier_value, def_value) end

---@param modifier_state EModifierState
---@return boolean
function entity:has_modifier_state(modifier_state) end

---@return string
function entity:get_vdata_class_name() end

---@return raw_struct
function entity:get_vdata() end

---@return string
function entity:get_model_name() end

---CModelState
---@return raw_struct
function entity:get_model_state() end

---CSkeletonInstance
---@return raw_struct
function entity:get_skeleton_instance() end


---@return {sequence: integer, name: string, cycle: number}[]
function entity:get_anims() end

--- only in dev version
---@return string
function entity:get_address() end


---@class particle_info
---@field name string
---@field control_points {cp: integer, origin: Vector}[]

---@return particle_info[]
function entity:get_particles() end

---@param path string
---@return boolean
function entity:has_particle(path) end

---@param path string
---@return Vector|nil
function entity:get_particle_position(path) end











