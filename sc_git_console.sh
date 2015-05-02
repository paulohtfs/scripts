#!/bin/sh

## Making the terminal git sensitive
# Download git-prompt.sh
git_prompt_file="$HOME/.git-prompt.sh"
if [ -f "$git_prompt_file" ]; then
        echo "$git_prompt_file found"
else
        echo "$git_prompt_file not found"
        echo "Downloading file git-prompt.sh \n"

        wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -P $HOME/
        mv $HOME/git-prompt.sh $HOME/.git-prompt.sh
fi

commented="#force_color_prompt=yes"
uncommented="force_color_prompt=yes"
sed -i "s/$commented/$uncommented/" $HOME/.bashrc


