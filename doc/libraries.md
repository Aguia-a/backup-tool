# Libraries Documentation

This readme documents the libraries present in `lib/`.

Every library contains information about itself in the header. Functions  also come with some documentation about itself.

## [`lib/backup_tools.sh`](../lib/backup_tools.sh)

This library stores functions related to creating and mainaining backup archives.

The only function defined in it, is:

- `create_backup()`: creates a compressed tar archive from the source files and saves it into the target directory.

## [`lib/checking_tools.sh`](../lib/checking_tools.sh)

This library contains functions for checking different situations.

Some functions defined within it are:

- `validate_dirs()`: Checks if the passed arguments are directories, optionally throwing an error.

- `theres_new_data()`: Checks if there's a file in the backup source directory newer than the last backup.

- `main_archive_already_exists()`: Checks if a main backup archive already exists in the target backup directory.

## [`lib/rotation_tools.sh`](../lib/rotation_tools.sh)

This library contains tools for managing backup archives rotation.

The only function defined in it, is:

- `make_rotation()`: # make_rotation moves every backup archive up by one, also removing archives that exceed the `MAX_BACKUP_NUMBER` variable.