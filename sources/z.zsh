
function zaw-src-z() {
    candidates=("${(ps:\n:)$(z|cut -d' ' -f 2-|sed -e 's/^[[:space:]]*//'|tac)}")
    actions=("zaw-src-z-insert")
    act_descriptions=("append to edit buffer")
}

function zaw-src-z-insert() {
    zaw-callback-append-to-buffer "${(q)1}/"
}

zaw-register-src -n z zaw-src-z

