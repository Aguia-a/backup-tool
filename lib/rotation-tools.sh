has_to_rotate()
{
    if [[ ! -f "$backup_target_dir/$backup_target_filename.tar.gz" ]]; then
        return 1
    fi

    return 0
}

make_rotation()
{
    archives_located=( $(find "$backup_target_dir" -name "$backup_target_filename*.tar.gz" | sort -V ) )
    archives_length=${#archives_located[@]}

    for (( index=archives_length-1; index >= 0; index--)); do

        if (( index >= max_backup_number )); then

            rm -f "${archives_located[index]}"

        else

            mv "${archives_located[index]}" \
                "$backup_target_dir/$backup_target_filename.$index.tar.gz"

        fi

    done
}