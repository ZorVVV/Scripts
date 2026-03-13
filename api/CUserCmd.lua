---@meta

---@class CUserCmd
---@field legacy_command_number integer
---@field client_tick integer
---@field viewangles Angle
---@field forwardmove number
---@field leftmove number
---@field upmove number
---@field impulse number
---@field impulse number
---@field weaponselect integer
---@field random_seed integer
---@field mousedx integer
---@field mousedy integer
---@field pawn_entity_handle integer
---@field consumed_server_angle_changes integer
---@field cmd_flags integer
---@field vec_camera_position Vector
---@field ang_camera_angles Angle
---@field execute_ability_indices integer
---@field in_shop boolean
---@field camera_roaming_speed number
---@field using_free_cursor boolean
---@field enemy_hero_aimed_at integer
---@field button_state0 InputBitMask_t|integer
---@field button_state1 InputBitMask_t|integer
---@field button_state2 InputBitMask_t|integer
---@field orig_vec_camera_position Vector
---@field orig_ang_camera_angles Angle
CUserCmd = {}

---@param bit_mask InputBitMask_t|integer
function CUserCmd:add_buttonstate1(bit_mask) end

---@param bit_mask InputBitMask_t|integer
function CUserCmd:add_buttonstate2(bit_mask) end

---@param bit_mask InputBitMask_t|integer
function CUserCmd:add_buttonstate3(bit_mask) end

---@param bit_mask InputBitMask_t|integer
function CUserCmd:clear_buttonstate1(bit_mask) end

---@param bit_mask InputBitMask_t|integer
function CUserCmd:clear_buttonstate2(bit_mask) end

---@param bit_mask InputBitMask_t|integer
function CUserCmd:clear_buttonstate3(bit_mask) end

---@param target_pos Vector
---@return Vector
function CUserCmd:get_psilent_camera_pos(target_pos) end

---@param target_pos Vector
---@return boolean
function CUserCmd:can_psilent_at_pos(target_pos) end

---@param target_pos Vector
function CUserCmd:set_psilent_at_pos(target_pos) end

---@param aim_angle Angle
---@param smooth number
function CUserCmd:smooth_aim(aim_angle, smooth) end

function CUserCmd:reset_backtrack() end

function CUserCmd:reset_camera_pos() end

function CUserCmd:reset_camera_ang() end

--- return original state before all cheat callbacks
---@return InputBitMask_t|integer 
function CUserCmd:get_orig_button_state0() end

--- return original state before all cheat callbacks
---@return InputBitMask_t|integer 
function CUserCmd:get_orig_button_state1() end

--- return original state before all cheat callbacks
---@return InputBitMask_t|integer 
function CUserCmd:get_orig_button_state2() end