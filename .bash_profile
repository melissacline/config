
export PATH=.:$HOME/bin:$HOME/scripts/:/usr/local/bin:/opt/local/bin:$PATH
#export CVS_RSH=ssh
#export CVSROOT=:ext:cline@hgwdev.cse.ucsc.edu:/projects/compbio/cvsroot
#source ~/.bashrc.hiram
export PYTHONPATH=$HOME/projects/cghub/cghub-target-cgci-metadata/scripts:$PYTHONPATH

alias  h=history
alias unwindoze="tr '\15' '\n'"
alias cleanup='rm *~ *bak core >& /dev/null'

alias heron='ssh bioinfocus.com -l cline'
alias hgw="ssh hgwdev.cse.ucsc.edu -l cline"
alias skip="ssh skip.ucsc.edu -l cline"
alias metarray="ssh metarray.ucsc.edu -l cline"
alias hn04="ssh karchin-hn04.icm.jhu.edu -l mcline"
alias hn02="ssh karchin-hn02.icm.jhu.edu -l mcline"
alias cruncher="ssh cruncher.kilokluster.ucsc.edu -l cline"
alias tcga1="ssh tcga1.kilokluster.ucsc.edu -l cline"
alias app02="ssh stage-app02.cghub.ucsc.edu -l cline"
alias cghub="ssh cghub.ucsc.edu -l cline"
alias app01="ssh app01.cghub.ucsc.edu -l cline"

# MacPorts Installer addition on 2010-06-14_at_10:59:17: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export PYTHONPATH=$HOME/bin/scripts/python:$HOME/bin/scripts/python/pycbio/lib:$HOME/src/python:$HOME/kent/python:$HOME/kent/python/ucscgenomics/rafile:/Library/Python/2.6/site-packages/biopython-1.57-py2.6-macosx-10.6-universal.egg/:$PYTHONPATH

tawk() {
    awk -F'\t' "$@"
}
listcolumns() {
    awk -F'\t' '{ for (ii = 1; ii <= NF; ii++) { print ii, $ii}}'
}

hlsort() {
  (head -1 $1; tail -n +2 $1 | sort)
}

runCgSubmit() {
    cgsubmit --validate-only -s https://stage.cghub.ucsc.edu -u $1
}



##
# Your previous /Users/melissacline/.bash_profile file was backed up as /Users/melissacline/.bash_profile.macports-saved_2013-01-28_at_18:34:04
##

# MacPorts Installer addition on 2013-01-28_at_18:34:04: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

##
# Your previous /Users/melissacline/.bash_profile file was backed up as /Users/melissacline/.bash_profile.macports-saved_2014-08-14_at_12:28:59
##

# MacPorts Installer addition on 2014-08-14_at_12:28:59: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

