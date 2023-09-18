#!/bin/bash

# Customization file for Bash :)


# Take input of the file type
ques=$(cat <<EOM
What's your file type?
|    Choose     |
| b for .bashrc |
| z for .zshrc  |

Your choice :
EOM
)

read -p ques systype

if [systype == "z"]; then
	cp ~/.zshrc ~/.zshrc.backup
elif [systype == "b"]; then
	cp ~/.bashrc ~/.bashrc.backup
else
	echo "Wrong Input :/"
fi

# Customize bash prompt
echo export PS1="\[\e[37m\]\n\[\e[m\]\[\e[37m\]🌙\[\e[m\]\[\e[37m\] \[\e[m\]\[\e[43;30m\]\t\[\e[m\]\[\e[37m\] \[\e[m\]\[\e[37m\]|\[\e[m\]\[\e[37m\] \[\e[m\]\[\e[44;30m\]\d\[\e[m\]\[\e[37m\]\n\[\e[m\]\[\e[37m\]\n\[\e[m\]\[\e[41;30m\]\u\[\e[m\]\[\e[37m\] \[\e[m\]\[\e[37m\]in\[\e[m\]\[\e[37m\] \[\e[m\]\[\e[37m\][\[\e[m\]\[\e[46;30m\]\W\[\e[m\]\[\e[37m\]]\[\e[m\]\[\e[37m\]\n\[\e[m\]\[\e[37m\]↳\[\e[m\]\[\e[37m\] \[\e[m\]\[\e[37m\]\\$\[\e[m\]\[\e[37m\] \[\e[m\]"
