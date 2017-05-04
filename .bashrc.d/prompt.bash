function setPs1 {
    # Don't expose Color* to env
    local Color1="\001\033[1;33m\002"
    local Color2="\001\033[0;90m\002"
    local Color3="\001\033[1;31m\002"
    local ColorR="\001\033[0m\002"
    export PS1="${Color1}\w ${Color2}[\h] [\A]\n${Color3}>${ColorR} "
}

setPs1
