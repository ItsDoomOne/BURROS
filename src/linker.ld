PHDRS
{
    text PT_LOAD FLAGS(5); /* Read + Execute */
    rodata PT_LOAD FLAGS(4); /* Read Only */
    data PT_LOAD FLAGS(6); /* Read + Write */
}

SECTIONS
{
    /* Endereço padrão para kernels Higher Half no Limine */
    . = 0xffffffff80000000;

    .text : {
        *(.text .text.*)
    } :text

    .rodata : {
        *(.rodata .rodata.*)
    } :rodata

    .data : {
        *(.data .data.*)
    } :data

    .bss : {
        *(.bss .bss.*)
        *(COMMON)
    } :data
}
