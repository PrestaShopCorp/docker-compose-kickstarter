#!/bin/bash
set -e

# see https://devdocs.prestashop.com/1.7/development/components/console/prestashop-module/
# see https://devdocs.prestashop.com/1.7/modules/testing/resources/
INSTALL_COMMAND="${PS_DIR}/bin/console prestashop:module --no-interaction install"
MODULES_TO_INSTALL=/ps-modules

get_module_name() {
  local zip_file="$1"
  local module_name=$(unzip -l "$zip_file" | awk 'NR==4{print $4}' | xargs basename)

  echo "$module_name"
}

for file in $(ls "${MODULES_TO_INSTALL}"/*.zip); do
  module=$(get_module_name $file)
  echo "--> installing ${module} from ${file}...";
  rm -rf "${MODULE_DIR}/${module:-something-at-least}"
  unzip -qq ${file} -d ${MODULE_DIR}
  php $INSTALL_COMMAND ${module}
done;

