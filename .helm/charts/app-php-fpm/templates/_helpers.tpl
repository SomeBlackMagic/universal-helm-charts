
{{- define "common.externalsecretEnvVarsSecrets" -}}
  {{- if eq $.Values.externalSecret.enabled true }}
- secretRef:
    name: {{ $.Release.Name }}-external-secret
  {{- end }}
{{- end -}}
