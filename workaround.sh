#!/bin/bash

set -e
set -x

export PLATFORM_PROJECT=kit-v2-platformanthos-config-management@${
export LOCATION=us-central1

kubectl --context gke_${PLATFORM_PROJECT}_${LOCATION}_acp annotate sa -n config-management-system importer iam.gke.io/gcp-service-account=anthos-config-management@cpa-kit-platform.iam.gserviceaccount.com --overwrite
