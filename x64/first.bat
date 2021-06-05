@echo off
netsh trace start traceFile=log.etl capture=yes
timeout 10 > nul
netsh trace stop
etl2pcapng.exe log.etl log.pcapng