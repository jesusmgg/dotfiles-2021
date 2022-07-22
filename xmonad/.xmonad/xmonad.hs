import XMonad
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Layout.WindowArranger
import XMonad.Layout.ResizableTile -- for resizeable tall layout
import XMonad.Layout.MouseResizableTile -- for mouse control
import XMonad.Layout.ThreeColumns -- for three column layout
import XMonad.Layout.Grid -- for additional grid layout
import XMonad.Layout.NoBorders -- for fullscreen without borders
import XMonad.Layout.Fullscreen -- fullscreen mode 
import XMonad.Hooks.EwmhDesktops

myLayout = ( mouseResizableTile ||| noBorders Full ) 

main :: IO()
main = xmonad $ ewmh def 
    { modMask = mod4Mask
    , terminal = "urxvt"
    , focusFollowsMouse = False
    , layoutHook = myLayout
    }
    `additionalKeysP`
    [ ("M-f", spawn "firefox")
    ]
