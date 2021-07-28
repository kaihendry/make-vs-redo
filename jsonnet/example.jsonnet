#!/usr/bin/jsonnet -J vendor
local grafana = import 'grafonnet/grafana.libsonnet';
local dashboard = grafana.dashboard;

dashboard.new(
  'Foobar example',
  uid='redo-dashboard',
  tags=['example'],
  editable=true,
  time_from='now-5m'
)
