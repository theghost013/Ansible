!/bin/bash

echo "Analyse des playbooks avec ansible-lint..."

for playbook in *.yaml; do
    if [ -f "$playbook" ]; then
        echo "=== Analyse de $playbook ==="
        ansible-lint "$playbook"
        echo ""
    fi
done
