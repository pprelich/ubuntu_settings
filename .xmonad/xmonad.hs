import XMonad
 
import XMonad.Actions.PhysicalScreens
import XMonad.Actions.UpdatePointer
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.ThreeColumns
import XMonad.Util.EZConfig
 
main = xmonad defaults
 
defaults = defaultConfig
  { borderWidth = 1
  , handleEventHook = fullscreenEventHook
  , workspaces = ["code", "web"]
  , layoutHook = ThreeCol 1 (3/100) (1/3) ||| Full
  , logHook = updatePointer (Relative 0.5 0.5)
  , terminal = "xterm -fa inconsolata-11"
  , modMask = mod4Mask }
    `additionalKeysP` 
      [ ("M-S-l", spawn "gnome-screensaver-command -l")
      , ("M-S-s", spawn "sleep 1 && gnome-screensaver-command -l && dbus-send --print-reply --system --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend && xset dpms force off")
      ]
