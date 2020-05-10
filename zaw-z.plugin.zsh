
if [[ -z $(builtin declare -f -F zaw-register-src) ]]; then
    echo "Error: Unable to load zaw-z; zaw not loaded"
    return
fi

if ! which z 2>&1 > /dev/null; then
    echo "Error: Unable to load zaw-z; z not loaded"
    return
fi

if ! which tac 2>&1 > /dev/null; then
    alias tac="tail -r"
fi

local base=${${0:A}:h}
for src in $base/sources/*; do
    source $src
done
