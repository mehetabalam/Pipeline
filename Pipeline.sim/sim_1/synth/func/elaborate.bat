@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto c1687369d13444b18ba1dc54c79fdcd1 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot CPU_wrapper_func_synth xil_defaultlib.CPU_wrapper -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
