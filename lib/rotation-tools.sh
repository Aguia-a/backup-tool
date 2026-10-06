has_to_rotate()
{
    if [[ ! -f "$backup_target_dir/$backup_target_filename.tar.gz" ]]; then
        return 1
    fi

    return 0
}

make_rotation()
{
    archives_located=( $(find "$backup_target_dir" -name "$backup_target_filename.?.tar.gz" | sort -V) )
    archives_length="${#archives_located[@]}"

    local first_occurence=0

    for (( x=archives_length-1; x >= 0; x-- )); do
        
        if (( first_occurence == 0 )); then

            if (( x => max_backup_number )); then
                
                rm "${archives_located[x]}"
                
            fi

            (( first_occurence = 1 ))
        fi

        echo "${archives_located[x]}"

    done
}