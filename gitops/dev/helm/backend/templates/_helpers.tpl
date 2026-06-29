{{- define "shopverse.backend.image" -}}
{{ printf "%s/%s:%s" .Values.backend.image.uri .Values.backend.image.name .Values.backend.image.version }}
{{- end }}


{{/*

=========================================================
OLD IMPLEMENTATION (without printf) — kept for reference
=========================================================
{{- define "shopverse.backend.image" -}}
{{ .Values.backend.image.uri }}/{{ .Values.backend.image.name }}:{{ .Values.backend.image.version }}
{{- end }}

*/}}
