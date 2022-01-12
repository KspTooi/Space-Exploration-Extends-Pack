data:extend{
  -- MAP SETTINGS
  {
    type = "string-setting",
    name = "kscp-player-join-message",
    setting_type = "runtime-global",
    default_value = '',
    allow_blank = true,
    order = "aa"
  },

  {
    type = "bool-setting",
    name = "kscp-surface-manager-remove-factory-surface",
    setting_type = "runtime-global",
    default_value = false,
    order = "aa"
  }
}
