cmd_Release/obj.target/nodecpptest.node := g++ -shared -pthread -rdynamic -m64  -Wl,-soname=nodecpptest.node -o Release/obj.target/nodecpptest.node -Wl,--start-group Release/obj.target/nodecpptest/main.o -Wl,--end-group 