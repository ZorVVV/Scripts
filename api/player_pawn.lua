---@meta

---@class player_pawn: entity
player_pawn = {}

---@return ability[]
function player_pawn:get_abilities() end

---@param name string
---@return ability|nil
function player_pawn:get_ability(name) end

---@return ability|nil
function player_pawn:get_primary_weapon() end

---@param slot EAbilitySlots_t
---@return ability|nil
function player_pawn:get_ability_by_slot(slot) end

---@param stat EStatsType
---@return number
function player_pawn:get_starting_stat(stat) end

---@param stat EStatsType
---@return number
function player_pawn:get_scaling_stat(stat) end

---@return number
function player_pawn:get_tech_resist(stat) end

---@return boolean
function player_pawn:is_visible() end

---@class move_data_t
---@field tickcount integer
move_data_t = {}

---@return Vector
function move_data_t:get_origin() end

---@return Vector
function move_data_t:get_velocity() end

--- return false from callback -> stop simulation
---@param callback fun(mv: move_data_t): boolean
function player_pawn:simulate_movement(callback) end

--- CCitadelPlayerController
---@return entity
function player_pawn:get_player_controller() end

---@param currency ECurrencyType
---@return integer
function player_pawn:get_currency(currency) end


--- 76561197960265728ull + account_id to get steamid64
---@return integer
function player_pawn:get_account_id() end

