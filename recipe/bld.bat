@echo on

cargo-bundle-licenses ^
    --format yaml ^
    --output "%SRC_DIR%\THIRDPARTY_LICENSES.yaml" ^
    || exit 1

cargo install --no-track --root "%PREFIX%" --path . || exit 1
