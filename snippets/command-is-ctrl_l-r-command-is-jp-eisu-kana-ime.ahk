#include command-is-ctrl.ahk

/*
;;;;;;;; Inspired by https://github.com/karakaram/alt-ime-ahk
*/
; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
    return


/*
;;;;;;;; 左右のコマンドキーの空打ちによる IME の制御
;;;;;;;;;;;; 左Command -> IME Off (Mac JISキーボードの「英数」キーに相当),
;;;;;;;;;;;; 右Command -> IME On (Mac JISキーボードの「かな」キーに相当)
*/
;;;; USキーボードの「左Command」は仮想キーの「左Windows」に相当
;;;; すでに「左Command」down は「左Ctrl」down に Renap され、これはそのあとに呼び出される「左Command」up のホットキーなので、「左Ctrl」up を発生させる
LWin up::
    if (A_PriorHotkey == "*LWin")
    {
        IME_SET(0)
    }
    Send {LCtrl up}
    return
;;;; USキーボードの「右Command」は仮想キーの「右Windows」に相当
;;;; すでに「右Command」down は「右Ctrl」down に Renap され、これはそのあとに呼び出される「右Command」up のホットキーなので、「右Ctrl」up を発生させる
RWin up::
    if (A_PriorHotkey == "*RWin")
    {
        IME_SET(1)
    }
    Send {RCtrl up}
    return