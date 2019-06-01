#/sw/bin/init.sh

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

case $MACHTYPE in
    x86_64-apple-darwin15)
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        source $(brew --prefix)/etc/bash_completion
    fi
    ;;
esac

export PATH=.:$HOME/bin:$HOME/scripts:/usr/local/bin:/usr/bin:/sw/bin:/sw/sbin:/opt/local/bin:/usr/X11R6/bin:/opt/local/lib/mysql5/bin:$PATH
export PATH=$(pyenv root)/completions/pyenv.bash:$PATH
export PYTHONPATH=$HOME/bin/scripts/python:$HOME/bin/scripts/python/pycbio/lib:$HOME/src/python:/Library/Python/2.6/site-packages/biopython-1.57-py2.6-macosx-10.6-universal.egg/:$PYTHONPATH

export WORKON_HOME=$HOME/.venv
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh


alias  h=history
alias tawk="awk -F'\t'"
alias unwindoze="tr '\15' '\n'"
alias cleanup='rm *~ *bak \#* core >& /dev/null'
alias resetmic='sudo killall coreaudiod'

alias brcap='ssh brcaexchange.cloudapp.net -l brca'
alias brcac='ssh brcaexchange-cline.cloudapp.net -l brca'
alias heron='ssh bioinfocus.com -l cline'
alias hgw="ssh hgwdev.sdsc.edu -l cline"
alias synapse="synapse -u cline@soe.ucsc.edu -p Sy,ywbtd0m!"

aws() {
    ssh -i ~/.ssh/mclineucscedu.pem ubuntu@$1
}

listcolumns() {
   (head -1 $1 | awk -F ${2:-' '} '{ for (ii = 1; ii <= NF; ii++) { print ii, $ii }}')
}


hlsort() {
  (head -1 $1; tail -n +2 $1 | sort)
}


runCgSubmit() {
    cgsubmit --validate-only -s https://stage.cghub.ucsc.edu -u $1
}


# MacPorts Installer addition on 2010-06-10_at_09:32:07: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

/usr/local/bin/virtualenvwrapper.sh

# For GnuCash
#BXC810GU90PXNTXX
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/melissacline/src/google-cloud-sdk/path.bash.inc' ]; then source '/Users/melissacline/src/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/melissacline/src/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/melissacline/src/google-cloud-sdk/completion.bash.inc'; fi
# added by Anaconda2 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/melissacline/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/melissacline/anaconda2/etc/profile.d/conda.sh" ]; then
        . "/Users/melissacline/anaconda2/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/melissacline/anaconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
