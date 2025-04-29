# Single-Port-Synchronous-RAM
Синтезируемая одно-портовая синхронная RAM с тремя режимами работы:
- write-first
- read-first
- no-change. 
Написана на Verilog. RAM синтезируется в блочную память на FPGA MAX10. 
Выходы: dout_rf, dout_wf, dout_nch — каждый соответствует своему режиму.
Включён минимальный testbench для верификации.