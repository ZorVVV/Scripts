---@meta

---@class utils
utils = {}

---@param angle Angle
function utils.set_camera_angles(angle) end

---@return Angle
function utils.get_camera_angles() end

---@return Vector
function utils.get_camera_pos() end

---@return number
function utils.get_camera_fov() end

---@param fov number
---@return number
function utils.fov_to_pixel_radius(fov) end

---@return player_pawn|nil
function utils.find_nearest_visible_enemy() end

---@return player_pawn|nil
function utils.find_target_in_fov() end

---@return player_pawn|nil
function utils.find_nearest_fov_enemy() end

---@param src Vector
---@param dst Vector
---@return Angle
function utils.calc_angle(src, dst) end

---@param src Angle
---@param dst Angle
---@return number
function utils.get_fov(src, dst) end

---@param dst number
---@param src number
---@return number
function utils.angle_diff(dst, src) end

---@param src Vector
---@param dst Vector
---@param target_velocity Vector
---@param primary_weapon ability
---@return Vector
function utils.predict_bullet(src, dst, target_velocity, primary_weapon) end

---@return integer
function utils.get_slide_level() end

---@return number
function utils.get_slide_angle() end

---@param start Vector
---@param end_ Vector
---@param ent entity
---@return boolean
function utils.is_line_intersect_entity(start, end_, ent ) end

---@param start Vector
---@param end_ Vector
---@param ent entity
---@return Vector
function utils.get_line_intersection_entity(start, end_, ent ) end

---@param pos Vector
---@param is_inverted? boolean
---@return Vec2
function utils.world_to_map(pos, is_inverted) end

---@param pos Vec2
---@param is_inverted? boolean
---@return Vec2
function utils.minimap_to_world(pos, is_inverted) end

---@param pos Vec2
---@param is_inverted? boolean
---@return Vec2
function utils.minimap_percent_to_minimap(pos, is_inverted) end


-- local pos = Vec2(info.pos_x, info.pos_y);

-- if camp_list[info.name] then
--     camp_list[info.name]:update(info.visible)
-- else
--     camp_list[info.name] = camp:new(info.name, pos, info.visible, is_inverted, info.type)
-- end

---@class camp_info
---@field pos_x number
---@field pos_y number
---@field name string
---@field visible string
---@field type integer

---@param team_num integer
---@param all_types? boolean
---@return camp_info[]
function utils.get_neutral_camps(team_num, all_types) end

---@param cmd string
function utils.execute_command(cmd) end