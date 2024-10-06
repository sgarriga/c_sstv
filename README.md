# c_sstv
Create a compiled version of colaclanth/sstv<BR>
It **may** be faster, but basically I struggled with Python packaging in Bookworm.<br>
<br>
1 Install Cython (*I did this :* `sudo -H pip install cython --break-system-packages`)<br>
2 Clone this repo...<br>
`git clone https://github.com/sgarriga/c_sstv.git`<br>
3 Build the executable...<br>
`cd c_sstv`<br>
`./build_sstv.sh`<br>
4 Install it...<br>
`sudo cp sstv/sstv/sstv /usr.local/bin`<br>
