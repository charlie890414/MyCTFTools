pip install angr pwntools 

gem install one_gadget

useradd -m ctf && echo "ctf ALL=NOPASSWD: ALL" > /etc/sudoers.d/ctf

git clone https://github.com/scwuaptx/peda.git ~/peda && echo "source ~/peda/peda.py" >> ~/.gdbinit && cp ~/peda/.inputrc ~/ 

git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb && cp ~/Pwngdb/.gdbinit ~/

git clone https://github.com/sqlmapproject/sqlmap.git ~/sqlmap-dev