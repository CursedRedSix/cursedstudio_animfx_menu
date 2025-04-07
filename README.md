# 🔥 CursedStudio AnimPostFX Menu (RedM - NUI)

A sleek, red-and-black NUI-based menu to preview and toggle RedM animpostfx effects in-game.

Built for VORP, RedEM:RP, QBR, and custom setups using ACE permissions.

---

## 📦 Resource Name
cursedstudio_animfx_menu

---

## 🧰 Features

- ✅ Fully standalone NUI menu (HTML/CSS/JS)
- ✅ No WarMenu dependency
- ✅ Red + black UI theme
- ✅ Click to play any effect
- ✅ Click again to stop (toggle)
- ✅ ESC key or ❌ closes menu
- ✅ Built-in ACE permission system (multi-framework)
- ✅ Works with all RedM roleplay frameworks

---

## 🚀 Installation

1. Drop the folder into your RedM `resources/` directory.

2. Add to your `server.cfg`:
   ```cfg
   ensure cursedstudio_animfx_menu

3. Grant ACE permissions based on your framework:
add_ace group.admin vorp.animfx allow
add_ace group.admin redemrp.animfx allow
add_ace group.admin qbr.animfx allow
add_ace group.admin animfx.access allow

Assign players to the group:
add_principal identifier.steam:110000112345678 group.admin

## 🕹 Usage
In-game, type:
/animfxmenu
Select an effect from the list to play it

Click it again to stop it

Or use the “▶ Play” and “■ Stop” buttons manually

Press ESC or click ❌ to close