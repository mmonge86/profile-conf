# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Read the scripts in ~/.bashrc.d
# each file adds to overall configuration in a meaningful organization
if [[ -d $HOME/.bashrc.d ]]
then
    for x in $HOME/.bashrc.d/*.sh
    do
        if [[ -r "$x" ]]
        then
            source $x
        fi
    done
fi