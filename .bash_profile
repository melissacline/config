#/sw/bin/init.sh

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

export PATH=.:$HOME/bin:$HOME/scripts:/usr/local/bin:/usr/bin:/sw/bin:/sw/sbin:/opt/local/bin:/usr/X11R6/bin:/opt/local/lib/mysql5/bin:$PATH
export CLASSPATH=.:"$HOME/bin/picard/*.jar":$CLASSPATH
export CVS_RSH=ssh
export CVSROOT=:ext:cline@skip.ucsc.edu:/home/cline/.cvs
export PERLLIB=$PERLLIB:/opt/local/lib/perl5/site_perl/5.8.9
export PYTHONPATH=$HOME/bin/scripts/python:$HOME/bin/scripts/python/pycbio/lib:$HOME/src/python:/Library/Python/2.6/site-packages/biopython-1.57-py2.6-macosx-10.6-universal.egg/:$PYTHONPATH

export CGCLOUD_ZONE=us-west-2a


export MAGICK_HOME="$HOME/src/ImageMagick"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib"

alias  h=history
alias tawk="awk -F'\t'"
alias unwindoze="tr '\15' '\n'"
alias cleanup='rm *~ *bak \#* core >& /dev/null'
alias resetmic='sudo killall coreaudiod'

alias brca='ssh brcaexchange.cloudapp.net -l brca'
alias medftp='ssh medbook-ftp.sdsc.edu -l cline'
alias ohsu='ssh -C cline@acc.ohsu.edu'
alias podk='ssh cline@10.50.1.100'
alias galaxyxena='ssh galaxy@galaxyxena.soe.ucsc.edu'
alias heron='ssh bioinfocus.com -l cline'
alias hgw="ssh hgwdev.sdsc.edu -l cline"
alias skip="ssh skip.ucsc.edu -l cline"
alias metarray="ssh metarray.ucsc.edu -l cline"
alias hn04="ssh karchin-hn04.icm.jhu.edu -l mcline"
alias hn02="ssh karchin-hn02.icm.jhu.edu -l mcline"
alias tcga1="ssh tcga1.kilokluster.ucsc.edu -l cline"
alias cruncher="ssh cruncher.kilokluster.ucsc.edu -l cline"
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



##
# Your previous /Users/melissacline/.bash_profile file was backed up as /Users/melissacline/.bash_profile.macports-saved_2010-06-10_at_09:32:07
##

# MacPorts Installer addition on 2010-06-10_at_09:32:07: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

##
# Your previous /Users/melissacline/.bash_profile file was backed up as /Users/melissacline/.bash_profile.macports-saved_2012-06-05_at_17:13:40
##

# MacPorts Installer addition on 2012-06-05_at_17:13:40: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/melissacline/.bash_profile file was backed up as /Users/melissacline/.bash_profile.macports-saved_2013-01-25_at_15:11:08
##

# MacPorts Installer addition on 2013-01-25_at_15:11:08: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

##
# Your previous /Users/melissacline/.bash_profile file was backed up as /Users/melissacline/.bash_profile.macports-saved_2016-05-05_at_17:52:20
##

# MacPorts Installer addition on 2016-05-05_at_17:52:20: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

