---@meta

---@class convar_table
convar_table = {}

---@return number
---@overload fun(this: convar_table, val: number)
function convar_table:float() end

---@return boolean
---@overload fun(this: convar_table, val: boolean): nil
function convar_table:bool() end

---@return integer
---@overload fun(this: convar_table, val: integer)
function convar_table:int() end

---@type table<string, convar_table>
convar = {}