# checking_tools.sh library contains functions for checking
# different situations.
#
# validate_dirs checks if the passed arguments are directories,
# optionally throwing an error.
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

# theres_new_data checks if there's a file in the backup source directory
# newer than the last backup.
theres_new_data()
{
	new_data="$(find $BACKUP_SOURCE_DIR -name $BACKUP_SOURCE_FILETYPE \
	-newer $BACKUP_TARGET_DIR/$BACKUP_TARGET_FILENAME.tar.gz)"

	if [[ -z "$new_data" ]]; then
		return 1
	fi

	return 0
}

# main_archive_already_exists checks if a main backup archive
# already exists in the target backup directory.
main_archive_already_exists()
{
    if [[ ! -f "$BACKUP_TARGET_DIR/$BACKUP_TARGET_FILENAME.tar.gz" ]]; then
        return 1
    fi

    return 0
}