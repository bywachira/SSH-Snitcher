# SSH-Snitcher
A script that alerts users on discord when a user logs into the server

### How to set it up?
- Clone this repo onto your linux server
```bash
git clone https://github.com/bywachira/SSH-Snitcher.git 
```
- Make `snitch.sh` executable
```bash
chmod +x ./SSH-Snitcher/snitch.sh
```
- Update your `.bashrc`
```bash
# checkout to home directory
cd 

# open .bashrc, with nano/vim
nano .bashrc

# add this to the end of the file
if [[ -n $SSH_CONNECTION ]] ; then
   export DISCORD_WEBHOOK='<Discord webhook url>' && /path/to/shell/script/snitch.sh
fi
```
- Save the file `ctrl + o` `enter` `ctrl + x` for nano
- Exit the server, and try logging in again via `SSH`
