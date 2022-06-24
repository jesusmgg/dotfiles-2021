import XMonad
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

main :: IO()
main = xmonad $ def 
    { modMask = mod4Mask
    , terminal = "urxvt"
    , focusFollowsMouse = False
    }
    `additionalKeysP`
    [ ("M-f", spawn "firefox")
    ]