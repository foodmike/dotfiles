sudo rsync --acls \
           --verbose \
           --archive \
           --one-file-system \
           --executability \
           --delete \
           --ignore-errors \
           --hard-links \
           --sparse \
           --xattrs \
           --exclude-from=$HOME/utils/rsync-excludes.txt \
           "/" "/Volumes/OneTB/"

#sudo bless -folder /Volumes/HybridDrive
