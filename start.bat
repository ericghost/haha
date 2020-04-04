@ECHO OFF 
%1 start mshta vbscript:createobject("wscript.shell").run("""%~0"" ::",0)(window.close)&&exit

start /b speederv2.exe -c -l0.0.0.0:9898 -ryour_server_ip:udpspeeder_server_port -k "ericvm" --mode 0 -f1:3,2:4,8:6,20:10 -q1 
start /b client_windows_amd64.exe -c kcptun_client.json 
