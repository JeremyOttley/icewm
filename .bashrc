# Emulate an MS-DOS prompt in your Linux shell.
# Laszlo Szathmary (jabba.laci@gmail.com), 2011
# Project home page:
# https://ubuntuincident.wordpress.com/2011/02/08/emulate-the-ms-dos-prompt/
#
#
# Modified by Soldier of Fortran
#
# Add to you ~/.bashrc file with: 'source ~/.themes/95/bashrc'

function msdos_pwd
{
    local dir="`pwd`"
    dir=${dir/$HOME/'~'}

    echo $dir | tr '/' '\\'
}

export PS1='C:`msdos_pwd`> '

echo 
echo
echo "Microsoft(R) Windows 95"
echo "   (C)Copyright Microsoft Corp 1981-1996."
echo
