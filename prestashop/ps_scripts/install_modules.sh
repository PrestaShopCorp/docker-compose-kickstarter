#!/bin/bash
set -e

# see https://devdocs.prestashop.com/1.7/development/components/console/prestashop-module/
# see https://devdocs.prestashop.com/1.7/modules/testing/resources/
INSTALL_COMMAND="${PS_DIR}/bin/console prestashop:module --no-interaction install"
MODULES_TO_INSTALL=/ps-modules

for file in $(ls "${MODULES_TO_INSTALL}/*.zip"); do
  module=$(basename ${file} | tr "-" "\n" | head -n 1);
  echo "--> installing ${module} from ${file}...";
  rm -rf "${MODULE_DIR}/${module:-something-at-least}"
  unzip -qq ${file} -d ${MODULE_DIR}
  php $INSTALL_COMMAND ${module}
done;

