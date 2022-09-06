
macro item_index_to_vram_index()
    ; Find screen position from Y (item number)
    TYA : ASL #5
    CLC : ADC #$0146 : TAX
endmacro

macro a8()
    SEP #$20
endmacro

macro a16()
    REP #$20
endmacro

macro i8()
    SEP #$10
endmacro

macro ai8()
    SEP #$30
endmacro

macro ai16()
    REP #$30
endmacro

macro i16()
    REP #$10
endmacro

macro sfxmove()
    LDA #$0039 : JSL !SFX_LIB1 ; item select
endmacro

macro sfxconfirm()
    LDA #$0038 : JSL !SFX_LIB1 ; menu confirm
endmacro

macro sfxfail()
    LDA #$0007 : JSL !SFX_LIB1 ; grapple end
endmacro

macro sfxreset()
    LDA #$001E : JSL !SFX_LIB3 ; quake
endmacro
