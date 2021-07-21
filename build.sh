rm -rf build
yarn build
yarn adapt
rm -rf /var/lnft
mv build /var/lnft
