{{- define "common.labels" }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/managed-by: Helm
meta.helm.sh/release-name: {{ .Release.Name | trunc 50 }}
app.kubernetes.io/instance: {{ .Release.Name | trunc 50 }}
app.kubernetes.io/component: {{ .Chart.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
{{- define "common.annotations" }}
meta.helm.sh/release-name: {{ .Release.Name | quote }}
meta.helm.sh/release-namespace: {{ .Release.Namespace | quote }}
{{- end }}