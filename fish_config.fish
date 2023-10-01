starship init fish | source

# https://github.com/edc/bass#nvm
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
