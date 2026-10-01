validate_dirs()
{
	while (( "$#" > 0 )); do

		if ! [[ -d "$1" ]]; then
			err "$1 is not a dir or does not exist"
		fi

		shift
	done

	return 0
}


