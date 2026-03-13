---@meta


entity_list = {}

---@return entity[]
function entity_list.get_all() end

---@alias player_pawn_class "C_CitadelPlayerPawn"

---@param class_name string
---@return entity[]
---@overload fun(class_name: player_pawn_class): player_pawn[]
function entity_list.by_class_name(class_name) end

---@param index integer
---@return entity[]
function entity_list.by_index(index) end

---@param handle integer
---@return entity[]
function entity_list.by_handle(handle) end

---@return player_pawn
function entity_list.local_pawn() end

--- CCitadelPlayerController
---@return entity
function entity_list.local_controller() end