mount -o remount,rw /
apt update && apt install -y waydroid && waydroid init

# https://github.com/waydroid/waydroid/commit/a3d741d ("Detect HIDL gralloc4")
# makes the following unneeded, Waydroid 1.3.1+
sed -i /var/lib/waydroid/waydroid_base.prop \
    -e 's/^ro.hardware.gralloc=.*/ro.hardware.gralloc=android/' \
    -e 's/^ro.hardware.egl=.*/ro.hardware.egl=meow/'

# https://github.com/waydroid/waydroid/commit/5eb95c3 ("Set aidl version based on the android version")
# makes the following unneeded, Waydroid 1.3.0+
sed 's/aidl2/aidl3/g' -i /etc/gbinder.d/anbox.conf

mount -o remount,ro /
stop waydroid-container     # only if you already started it before these fixes
start waydroid-container
