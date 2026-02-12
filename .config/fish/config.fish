fish_vi_key_bindings

set PATH \
    ~/.local/bin \
    $PATH

set -gx NODE_EXTRA_CA_CERTS '/home/ttibbetts/certs/ZScalerCA-20260212.pem'
set -gx AWS_PROFILE bedrock

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

set -gx PIP_TRUSTED_HOST nma-dev.novetta.com

source ~/.config/fish/dircolors.fish

if type -q nvm
    nvm use --lts > /dev/null &> /dev/null
end

if type -q starship
    starship init fish | source
end

if type -q pokemon-colorscripts
    pokemon-colorscripts -r
end


## ASDF
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path because it potentially
# changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
