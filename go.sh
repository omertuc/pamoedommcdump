#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

$SCRIPT_DIR/ignition_dump.py bootstrap-in-place-for-live-iso.ign

cp ign-root/opt/openshift/openshift/99-openshift-master-storage.yaml .
cp ign-root/opt/openshift/openshift/99-openshift-worker-storage.yaml .
