if (($EUID != 0)); then
    echo "You must run this script as root.";
    exit 1;
fi

RETRIEVE_FROM_WAYDROID_PATH="/home/phablet/Documents/retrieved/";
WAYDROID_DOCUMENTS_PATH="/home/phablet/.local/share/waydroid/data/media/0/Documents/";

rsync -a $WAYDROID_DOCUMENTS_PATH $RETRIEVE_FROM_WAYDROID_PATH
chown -R phablet:phablet $RETRIEVE_FROM_WAYDROID_PATH
