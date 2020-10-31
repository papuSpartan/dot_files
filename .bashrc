#PYWAL STUFF
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh






#wal -R -q
export PATH=$PATH:~/scripts/
export PAL_PATH=/usr/bin/pal

alias sudo="sudo "

#use fish shell if possible THIS MUST BE THE LAST THING
if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
	exec fish
fi

