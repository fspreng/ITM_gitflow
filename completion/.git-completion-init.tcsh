#!tcsh
#
# Initialize git completion script for ITM tcsh by copying the appropriate template file and, subsequently, sourcing it.
#

if ( -d ${HOME}/.git-completion ) then
	rm -f ${HOME}/.git-completion/.git-completion.tcsh
	rm -f ${HOME}/.git-completion/.git-completion.bash
	rm -f ${HOME}/.git-completion/.git-completion.tcsh.bash
else
	mkdir ${HOME}/.git-completion
endif
cp ${HOME}/git-completion/.git-completion.tcsh ${HOME}/.git-completion/.git-completion.tcsh
cp ${HOME}/git-completion/.git-completion.bash ${HOME}/.git-completion/.git-completion.bash

if ( -f "${HOME}/.git-completion/.git-completion.tcsh" ) then
	source ${HOME}/.git-completion/.git-completion.tcsh
endif
