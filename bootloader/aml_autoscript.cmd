# aml_autoscript
# One-time unlock (run once in recovery e.g. via `reboot update`)
# mkimage -A arm64 -T script -C none -d aml_autoscript.cmd aml_autoscript

if test "${bootfromsd}" != "1"; then
    setenv bootfromsd 1
    setenv upgrade_step 2
    saveenv
fi

sleep 1
reset
