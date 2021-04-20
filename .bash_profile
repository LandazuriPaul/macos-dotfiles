#!/bin/bash

# Load common environment variables
source ~/.env/common.sh

# Load local environment variables
[ -f ~/.env/local.sh ] && source ~/.env/local.sh
