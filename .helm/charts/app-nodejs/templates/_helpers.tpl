{{/* vim: set filetype=mustache: */}}
{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "worker.hpa_metric_name" -}}
{{- printf "%s-%s" .Release.Namespace .Release.Name | replace "+" "_" | replace "-" "_" | trunc 63 -}}
{{- end -}}