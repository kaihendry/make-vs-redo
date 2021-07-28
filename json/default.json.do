src=../jsonnet/$2.jsonnet
redo-ifchange $src
jsonnet -J ../vendor $src
