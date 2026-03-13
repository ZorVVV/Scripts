---@meta

---@class input
input = {}

---@return Vec2
function input.cursor_pos() end

---@param start Vec2
---@param end_ Vec2
---@return boolean
function input.cursor_in_bounds(start, end_) end

---@param key Enum.ButtonCode
---@return boolean
function input.is_down(key) end

---@param key Enum.ButtonCode
---@return boolean
function input.is_pressed(key) end