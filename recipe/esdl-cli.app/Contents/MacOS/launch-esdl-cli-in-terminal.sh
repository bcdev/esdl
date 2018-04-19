#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ESDL_BIN="$( cd "${DIR}/../../.."  && pwd )"

open "${ESDL_BIN}/esdl-cli"
