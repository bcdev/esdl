#!/bin/bash

$PYTHON setup.py install --single-version-externally-managed --record=record.txt

cp $RECIPE_DIR/esdl-cli $PREFIX/bin/
chmod 775 $PREFIX/bin/esdl-cli

if [ `uname` == Darwin ]
then
    cp -r $RECIPE_DIR/esdl-cli.app $PREFIX/bin/
    sed -i -e "s,\${PKG_VERSION},${PKG_VERSION},g" "${PREFIX}/bin/esdl-cli.app/Contents/Info.plist"
    chmod 775 "${PREFIX}/bin/esdl-cli.app/Contents/MacOS/launch-esdl-cli-in-terminal.sh"
else
    mkdir -p  $PREFIX/share/esdl
    cp $RECIPE_DIR/esdl.desktop-template $PREFIX/share/esdl/
    cp $RECIPE_DIR/esdl.png $PREFIX/share/esdl/
fi
