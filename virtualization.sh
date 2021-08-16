
CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


# Kali Linux
alias kali-cd="cd $CURRENT_DIR/kali-linux"
alias kali-status="cd $CURRENT_DIR/kali-linux && vagrant status"
alias kali-up="cd $CURRENT_DIR/kali-linux && vagrant up"
alias kali-ssh="cd $CURRENT_DIR/kali-linux && vagrant ssh"

### Multipass - Linux: https://multipass.run/ ###
alias mp='multipass'

# Use a function to delete and purge an instance since aliases don't accept parameters
mp-purge() {
    echo "Deleting and purging Multipass instance: $1"
    multipass delete "$1" && multipass purge && multipass list
}