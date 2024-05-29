alias au='git submodule update --init --recursive'

# Ansible Variables Defaults
loadansibledefaults () {
  # Unset Custom Ansible settings
  unset ANSIBLE_HOME
  unset ANSIBLE_LIBRARY
  unset ANSIBLE_MODULE_PATH
  unset ANSIBLE_CUSTOM_HOME
  unset ANSIBLE_CONFIG
  unset PYTHONPATH
  export PATH=""
  # Pyenv requires reload
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  pyenv rehash
}

encrypt () {
    ansible-vault encrypt $1
}

decrypt () {
    ansible-vault decrypt $1
}
