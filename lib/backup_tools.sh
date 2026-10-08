create_backup()
{
    tar czf "${BACKUP_TARGET_DIR}/${BACKUP_TARGET_FILENAME}.tar.gz" \
    "${BACKUP_SOURCE_DIR}"/${BACKUP_SOURCE_FILETYPE}
}
