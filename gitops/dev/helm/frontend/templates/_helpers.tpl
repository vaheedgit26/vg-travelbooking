{{- define "shopverse.frontend.image" -}}
{{ printf "%s/%s:%s" .Values.frontend.image.uri .Values.frontend.image.name .Values.frontend.image.version }}
{{- end }}

{{/*

=========================================================
OLD IMPLEMENTATION (without printf) — kept for reference
=========================================================
{{- define "shopverse.frontend.image" -}}
{{ .Values.frontend.image.uri }}/{{ .Values.frontend.image.name }}:{{ .Values.frontend.image.version }}
{{- end }}

*/}}
