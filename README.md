# Backup-Tool

Simple Command-Line tool for creating and rotating backup archives, made with bash.

It's able to create backups from many files with the same file extension.

## Dependencies

The tool is made for compatibility with bash, using many `GNU coreutils` tools, 
other shells might not work correctly.

> [!WARNING]
> It's known that this tool does not work in `busybox ash` nor `zsh`.

`tar` is also a dependency, as it is the core component of the backup tools.

## Getting Started

### Installation

This tool can be installed by simply cloning the repository:

```bash
git clone https://github.com/Aguia-a/backup-tool
```

### Configuration

Before proceeding to use, you need to configure the variables at `config/main-config.conf`.

### Basic Usage

The tool can be used by executing `backup-tool`:
```bash
./backup-tool
```
or
```bash
bash backup-tool
```

### Commands

This tool does not provide (_yet_) commands to manipulate configurations
or execution mode.

Every configuration needs to be made directly in the main config file.

## Other Documentation

There's some more documentation about libraries and configurations located at [`doc/configs.md`](doc/configs.md) and [`doc/libraries.md`](doc/libraries.md).
