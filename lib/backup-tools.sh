create_archive()
{
    tar czf "${backup_target_dir}/${backup_target_filename}.tar.gz" \
    "${backup_source_dir}"/${backup_source_filetype}
}
