# Configurations Documentation

This readme documents some main configuration variables present in [`config/configs.md`](../config/main-config.conf).

## Source Related

`BACKUP_SOURCE_DIR`: Defines the directory path where the files to be made into a backup are located.

`BACKUP_SOURCE_FILETYPE`: Defines the file extension from the files to be made into a backup.


## Target Related

`BACKUP_TARGET_DIR`: Defines the directory path where the the backup archives are to be saved.

`BACKUP_TARGET_FILENAME`: Defines the filename of the backup archive. For example, if the variable is defined as `"backup"`, then the resulting archive will be {`backup.tar.gz`, `backup.1.tar.gz` `...`}.

## Other Configrations

`MAX_BACKUP_NUMBER`: Defines the maximum number of backup archives that can exist, archives that exceed this value will be automatically deleted on rotation.