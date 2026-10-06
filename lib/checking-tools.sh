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

is_src_newer_than_trg()
{
	local source="${1}"
	local target="${2}"

	if [[ ! "$source" -nt "$target" ]]; then
		return 1
	fi

	return 0
}