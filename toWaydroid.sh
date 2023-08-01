if (($EUID != 0)); then
    echo "You must run this script as root.";
    exit 1;
fi

SEND_TO_WAYDROID_PATH="/home/phablet/Documents/send/";
WAYDROID_DOCUMENTS_PATH="/home/phablet/.local/share/waydroid/data/media/0/Documents/";

chown -R 1000:1000 $SEND_TO_WAYDROID_PATH/*
rsync -a $SEND_TO_WAYDROID_PATH $WAYDROID_DOCUMENTS_PATH
chown -R phablet:phablet $SEND_TO_WAYDROID_PATH/
