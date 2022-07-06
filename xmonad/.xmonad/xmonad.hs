import XMonad
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Actions.MouseResize
import XMonad.Layout.WindowArranger

layout = mouseResize $ windowArrange $ layoutHook def

main :: IO()
main = xmonad $ def 
    { modMask = mod4Mask
    , terminal = "urxvt"
    , focusFollowsMouse = False
    , layoutHook = layout
    }
    `additionalKeysP`
    [ ("M-f", spawn "firefox")
    ]