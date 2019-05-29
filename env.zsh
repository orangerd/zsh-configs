################################################################################
# env.zsh
################################################################################
# Environment variables to set for zsh
# Setup the path
export PATH=${PATH}:${HOME}/bin:${HOME}/.node_modules/bin:/sbin:/usr/sbin

# Setup LANG to be UTF8
export LANG=en_US.utf8

# vim is my favorite editor
export EDITOR=`which vim`

# Setup zsh history path
export HISTFILE="${HOME}/.zsh_history"
export HISTSIZE="1000"

# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups

# Something's wrong with XDG
export XDG_CONFIG_DIRS=/etc/xdg/:${XDG_CONFIG_DIRS}

# Set the JAVA tmp directory to a tmp directory under /home (/tmp is too small)
export _JAVA_OPTIONS=-Djava.io.tmpdir=${HOME}/.tmp
# And also ANDROID_TMP (since android-studio seems to use this for determining tmp)
export ANDROID_TMP=${HOME}/.tmp

# Use less as our pager
export PAGER=`which less`

# Setup CUDA paths.
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
export CUDA_HOME=/usr/local/cuda

# We want unlimited size for core dumps
ulimit -c unlimited

# Make less more friendly for non-text input files, see lesspipe(1)
[[ -x /usr/bin/lesspipe ]] && eval "$(lesspipe)"
