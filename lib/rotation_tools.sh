make_rotation()
{
    archives_located=( $(find "$BACKUP_TARGET_DIR" -name "$BACKUP_TARGET_FILENAME*.tar.gz" | sort -V ) )
    archives_length=${#archives_located[@]}

    for (( index=archives_length-1; index >= 0; index--)); do

        if (( index >= MAX_BACKUP_NUMBER )); then

            rm -f "${archives_located[index]}"

        else

            mv "${archives_located[index]}" \
               "$BACKUP_TARGET_DIR/$BACKUP_TARGET_FILENAME.$(( index + 1 )).tar.gz"
            

        fi

    done
}