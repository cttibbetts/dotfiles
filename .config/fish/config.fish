fish_vi_key_bindings

set PATH \
    ~/.local/bin \
    $PATH

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

set -x PIP_TRUSTED_HOST nma-dev.novetta.com

source ~/.config/fish/dircolors.fish

. ~/.asdf/asdf.fish
. ~/.asdf/completions/asdf.fish

if type -q starship
    starship init fish | source
end

if type -q pokemon-colorscripts
    pokemon-colorscripts -r
end

