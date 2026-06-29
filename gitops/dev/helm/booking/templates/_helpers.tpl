{{- define "travelbooking.booking.image" -}}
{{ printf "%s/%s:%s" .Values.booking.image.uri .Values.booking.image.name .Values.booking.image.version }}
{{- end }}
