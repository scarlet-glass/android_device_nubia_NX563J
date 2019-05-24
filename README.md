# android_device_nubia_NX563J
Tree for building TWRP for nubia Z17


## To compile

export ALLOW_MISSING_DEPENDENCIES=true

. build/envsetup.sh && lunch omni_NX563J-eng

mka adbd recoveryimage
