validate_dirs()
{
	local is_valid=0

	while (( "$#" > 0 )); do

		if ! [[ -d "$1" ]]; then
			
			err "$1 is not a dir or does not exist"
			(( is_valid = 1 ))

		fi

		shift

	done

	if (( is_valid == 1 )); then
		return 1
	fi

	return 0
}

theres_new_data()
{
	new_data="$(find $backup_source_dir -name $backup_source_filetype \
	-newer $backup_target_dir/$backup_target_filename.tar.gz)"

	if [[ -z "$new_data" ]]; then
		echo "Vazio"
		return 1
	fi

	return 0
}

main_archive_already_exists()
{
    if [[ ! -f "$backup_target_dir/$backup_target_filename.tar.gz" ]]; then
        return 1
    fi

    return 0
}