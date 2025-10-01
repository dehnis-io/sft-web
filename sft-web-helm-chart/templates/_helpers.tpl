{{/*
Create chart name and version as used by the chart label
*/}}
{{- define "sft-web-helm-chart.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}
