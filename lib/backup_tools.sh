# backup_tools.sh library stores functions related to
# creating and mainaining backup archives.
#
# create_backup creates a compressed tar archive from the source files
# and saves it into the target directory.
create_backup()
{
    find "$BACKUP_SOURCE_DIR" -name "$BACKUP_SOURCE_FILETYPE" -type f \
    -exec tar czf "$BACKUP_TARGET_DIR"/"$BACKUP_TARGET_FILENAME.tar.gz" {} +
}