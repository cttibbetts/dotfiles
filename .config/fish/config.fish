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

set KUBE_EDITOR /mnt/c/Program\ Files/Sublime\ Text\ 3/subl.exe
set HELM_EXPERIMENTAL_OCI 1

set NPM_TOKEN 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

nvm use 17
source ~/.asdf/asdf.fish

starship init fish | source

pokemon-colorscripts -r
