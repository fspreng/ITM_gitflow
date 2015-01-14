#!tcsh
#
# ITM Gitflow script package -- A collection of Git extensions to provide
# high-level repository operations for Vincent Driessen's branching model.
#
# A blog post by Vincent Driessen presenting this model is found at:
#    http://nvie.com/posts/a-successful-git-branching-model/
#
# Feel free to contribute to this project at:
#    https://github.com/fspreng/ITM_gitflow
#
# Copyright (c) 2012-2015 Fabian Spreng. All rights reserved.
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
cp /archive/software/gitflow/completion/.git-completion.tcsh ${HOME}/.git-completion/.git-completion.tcsh
cp /archive/software/gitflow/completion/.git-completion.bash ${HOME}/.git-completion/.git-completion.bash

if ( -f "${HOME}/.git-completion/.git-completion.tcsh" ) then
	source ${HOME}/.git-completion/.git-completion.tcsh
endif
