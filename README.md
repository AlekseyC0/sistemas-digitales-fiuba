# Sistemas Digitales — Trabajos Prácticos

**Taller de Sistemas Digitales (TA147) · Sistemas Digitales (66.17 / 86.41) — FIUBA, 1er cuatrimestre 2026**

Trabajos prácticos desarrollados con **Vivado 2018.3** sobre la placa **Digilent Arty A7-35** (`xc7a35ticsg324-1L`). Los enunciados originales están escritos para la Arty Z7-10; en cada informe se detalla la adaptación a la A7-35.

| TP | Tema | Informe | Fuentes |
|---|---|---|---|
| 1 | Ciclo de desarrollo con Vivado | [Informe_TP1](TP1/Informe_TP1.md) | [TP1/Fuentes](TP1/Fuentes) |
| 2 | Procesos de elaboración y síntesis (UART) | [Informe_TP2](TP2/Informe_TP2.md) | [TP2/Fuentes](TP2/Fuentes) |
| 3 | Implementación y análisis de temporización | [Informe_TP3](TP3/Informe_TP3.md) | [TP3/Fuentes](TP3/Fuentes) |
| 4 | Gestión de IP (Clocking Wizard / MMCM) | [Informe_TP4](TP4/Informe_TP4.md) | [TP4/Fuentes](TP4/Fuentes) |
| 5 | Restricciones de ubicación y temporización | [Informe_TP5](TP5/Informe_TP5.md) | [TP5/Fuentes](TP5/Fuentes) |

## Estructura

```
TPx/
├── Informe_TPx.md   informe con el desarrollo, análisis y verificación en placa
├── img/             capturas de Vivado y figuras del informe
└── Fuentes/         archivos .vhd / .v / .xdc (y .xci en el TP4) para recrear el proyecto
```

## Recrear un proyecto

1. En Vivado 2018.3, crear un *RTL Project* para la parte `xc7a35ticsg324-1L` (o la placa Arty A7-35).
2. Agregar los `.vhd` de `Fuentes/` como fuentes de diseño y los `.xdc` como restricciones.
3. En el TP4, agregar además `Fuentes/ip/clk_wiz_0.xci` (*Add Sources → Add or create design sources*) y generar el IP.
4. En el TP1, agregar `lab1_tb.v` como fuente de simulación.
