{{- define "shopverse.backend.image" -}}
{{ printf "%s/%s:%s" .Values.backend.image.uri .Values.backend.image.name .Values.backend.image.version }}
{{- end }}
