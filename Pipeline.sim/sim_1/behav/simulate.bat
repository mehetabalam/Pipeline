@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xsim CPU_wrapper_tb_behav -key {Behavioral:sim_1:Functional:CPU_wrapper_tb} -tclbatch CPU_wrapper_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
