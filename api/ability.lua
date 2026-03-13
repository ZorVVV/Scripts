---@meta

---@class ability: entity
ability = {}

---@return number
function ability:get_cast_range() end

---@return integer
function ability:get_level() end

---@return number
function ability:get_cooldown() end

---@return number
function ability:get_aoe_radius() end

---@alias execute_enum
---| 0 # ready
---| 2 # cooldown
---| 3 # passive
---| 7 # idk
---| 10 # busy

---@return execute_enum
function ability:can_be_executed() end

---@return integer[] m_nSubclassIDs
function ability:get_imbued_abilities() end

---@param m_nSubclassID integer
---@boolean
function ability:has_imbue_for(m_nSubclassID) end

--- pak01_dir.vpk > scripts/abilities.vdata_c
---@param name string
---@return raw_struct CitadelAbilityProperty_t
function ability:get_property(name) end

---@param name string
---@return number|nil
function ability:get_scaled_property(name) end

---@param level integer
---@return table<string, string>
function ability:get_upgrade(level) end

---@return table<string, string>[]
function ability:get_upgrades() end

---@return entity|nil
function ability:get_target() end