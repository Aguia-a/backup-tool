# backup_tools.sh library stores functions related to
# creating and mainaining backup archives.
#
# create_backup creates a compressed tar archive from the source files
# and saves it into the target directory.
create_backup()
{
    tar czf "${BACKUP_TARGET_DIR}/${BACKUP_TARGET_FILENAME}.tar.gz" \
    "${BACKUP_SOURCE_DIR}"/${BACKUP_SOURCE_FILETYPE}
}