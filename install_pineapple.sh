#!/usr/bin/env bash
set -e

# Paths
NVIM_CONFIG="$HOME/.config/nvim"
PLUGINS_DIR="$NVIM_CONFIG/lua/plugins"
LUA_DIR="$NVIM_CONFIG/lua"
AFTER_PLUGIN_DIR="$NVIM_CONFIG/after/plugin"

PINEAPPLE_PLUGIN="$PLUGINS_DIR/pineapple.lua"
REGISTRY_FILE="$LUA_DIR/pineapple_registry.lua"
THEME_FILE="$AFTER_PLUGIN_DIR/theme.lua"

# Create directories if they don't exist
mkdir -p "$PLUGINS_DIR"
mkdir -p "$LUA_DIR"
mkdir -p "$AFTER_PLUGIN_DIR"

# Create Pineapple plugin file
if [[ ! -f "$PINEAPPLE_PLUGIN" ]]; then
  echo "Creating Pineapple plugin file at $PINEAPPLE_PLUGIN"
  cat > "$PINEAPPLE_PLUGIN" <<EOL
return {
    "CWood-sdf/pineapple",
    cmd = "Pineapple",
    opts = {
        installedRegistry = "pineapple_registry",
        colorschemeFile = "after/plugin/theme.lua",
    },
}
EOL
else
  echo "Pineapple plugin file already exists at $PINEAPPLE_PLUGIN"
fi

# Create registry file
if [[ ! -f "$REGISTRY_FILE" ]]; then
  echo "Creating Pineapple registry file at $REGISTRY_FILE"
  echo "return {}" > "$REGISTRY_FILE"
else
  echo "Registry file already exists at $REGISTRY_FILE"
fi

# Create theme file
if [[ ! -f "$THEME_FILE" ]]; then
  echo "Creating theme file at $THEME_FILE"
  touch "$THEME_FILE"
else
  echo "Theme file already exists at $THEME_FILE"
fi

echo ""
echo "✅ Pineapple setup complete!"
echo "You can now start Neovim and run :Pineapple to preview and select themes."
