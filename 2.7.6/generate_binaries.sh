#!/bin/bash

TOOLS=(applauncher  beast  beauti  densitree  loganalyser  logcombiner  packagemanager  treeannotator)

cat << EOF > template
#!/bin/bash

VERSION=2.7.6
PACKAGE=BEAST2
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

STORAGES=(/ocean /local)

OPTIONS=""
for STORAGE in "${STORAGES[@]}"
do
  	if [ -d "$STORAGE" ]; then
		OPTIONS=$OPTIONS" -B $STORAGE"
        fi
done

if id | grep -q hubmap && [ -d "/hive" ]; then
	OPTIONS=$OPTIONS" -B /hive"
fi

if id | grep -q bil && [ -d "/bil" ]; then
	OPTIONS=$OPTIONS" -B /bil"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
done

rm -f template
