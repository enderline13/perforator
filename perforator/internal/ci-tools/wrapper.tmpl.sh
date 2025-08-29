#!/usr/bin/env bash

set -euo pipefail

# set all secrets

{{ range .Secrets }}
export {{ .Name }}='{{ .Value }}'
{{ end }}

set -x

# set all variables

{{ range .Variables }}
export {{ .Name }}='{{ .Value }}'
{{ end }}

# call job script

bash /home/builder/job.sh
