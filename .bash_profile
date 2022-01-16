#It sure bash_profile is itself that we shall use this the command "echo $BASH_CONF"
export BASH_CONF="bash_profile"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/openresty/bin:$PATH"
export PATH="/usr/local/openresty/nginx/sbin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH"
export TOOL_HOME=/Users/liuyf/workspace/tools
export JAVA_11_HOME=`/usr/libexec/java_home -v 11.0`
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8.0_112`
export JAVA_HOME=$JAVA_11_HOME
# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$TOOL_HOME:$PATH";
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes
SystemUIServer Terminal Twitter" killall;


# set HISTTIMEFORMAT will show timestamp in the history
export HISTTIMEFORMAT='%F %T    ';


## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/liuyf/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
#    else
#        if [ -f "/Users/liuyf/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#            . "/Users/liuyf/opt/anaconda3/etc/profile.d/conda.sh"
#        else
#            export PATH="/Users/liuyf/opt/anaconda3/bin:$PATH"
#        fi
#    fi
#    unset __conda_setup
#  # <<< conda initialize <<<
   

