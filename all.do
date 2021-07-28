find jsonnet -type f -name \*.jsonnet |
while read f
	do f=${f%%.jsonnet}
	echo json/${f##*/}.json
done | xargs redo-ifchange
