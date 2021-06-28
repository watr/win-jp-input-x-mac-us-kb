/*
;;;;;;;; Mac で「かな入力」 したときに入力される「ひらがな」へのマッピング
*/

; =+ key -> ゜
vkBB::
    if (IME_GET())
    {
        Send {vkDD}
    }
    else
    {
        Send {vkBB}
    }
    return
    
; =+ key + Shift -> 「
+vkBB::
    if (IME_GET())
    {
        Send +{vkDB}
    }
    else
    {
        Send +{vkBB}
    }
    return

; [{ key + Shift -> 」
+vkDB::
    if (IME_GET())
    {
        Send +{vkDD}
    }
    else
    {
        Send +{vkDB}
    }
    return
    
; ]} key -> む
vkDD::
    if (IME_GET())
    {
        Send {vkDC}
    }
    else
    {
        Send {vkDD}
    }
    return

; ]} key + Shift -> ー
+vkDD::
    if (IME_GET())
    {
        Send +{vkBD}
    }
    else
    {
        Send +{vkDD}
    }
    return

; \| key -> へ
vkDC::
    if (IME_GET())
    {
        Send {vkBB}
    }
    else
    {
        Send {vkDC}
    }
    return

; '" key + Shift ->  ろ
+vkDE::
    if (IME_GET())
    {
        Send {vkC0}
    }
    else 
    {
        Send +{vkDE}
    }
    return

;;;;;;;; Mac で「かな入力」 したときと同じように、あえて出力を制限するマッピング

; `~ key (+ Shift) -> Empty
vkC0::
+vkC0::
    return

; \| key + Shift -> へ
+vkDC::
    if (IME_GET())
    {
        Send {vkBB}
    }
    else
    {
        Send +{vkDC}
    }
    return

; -_ key + Shift -> ほ
+vkBD::
    if (IME_GET())
    {
        Send {vkBD}
    }
    else
    {
        Send +{vkBD}
    }
    return
