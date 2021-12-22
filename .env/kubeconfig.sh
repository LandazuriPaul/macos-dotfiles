# Variables
DEFAULT_KUBECONFIG_FILE="$HOME/.kube/config"
EXTRA_KUBECONFIG_FOLDER="$HOME/.kube/configs"

# Default kubeconfig ~/.kube/config
[ -f "${DEFAULT_KUBECONFIG_FILE}" ] && export KUBECONFIG="$DEFAULT_KUBECONFIG_FILE"

# Extra kubeconfig files
[ -d "${EXTRA_KUBECONFIG_FOLDER}" ] && \
    find "${EXTRA_KUBECONFIG_FOLDER}" -type f -name "*.yml" -o -name "*.yaml" -print0 | while IFS= read -r -d $'\0' kubeconfigFile;
    do
        export KUBECONFIG="$kubeconfigFile:$KUBECONFIG"
    done
