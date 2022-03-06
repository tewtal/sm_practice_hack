macro ppu_off()
    LDA #$80 : STA $2100 : STA $13
    STZ $420C : LDA $9B : PHA : STZ $9B
    STZ $4200
endmacro

macro ppu_on()
    LDA #$A1 : STA $4200
    LDA #$0F : STA $13 : STA $2100
    PLA : STA $9B : STA $420C
endmacro

macro item_index_to_vram_index()
    ; Find screen position from Y (item number)
    TYA : ASL #5
    CLC : ADC #$0146 : TAX
endmacro

macro a8()
    sep #$20
endmacro

macro a16()
    rep #$20
endmacro

macro i8()
    sep #$10
endmacro

macro ai8()
    sep #$30
endmacro

macro ai16()
    rep #$30
endmacro

macro i16()
    rep #$10
endmacro

macro wdm()
    dw $4242
endmacro
