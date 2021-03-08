# huokangoldlogparser

## Installation

Install from wheel:
```
pip install huokangoldlogparser-1.1.0-py3-none-any.whl
```

`huokangoldlogparser` should now be in your PATH.

## Usage

### Inputs
One or more input files must be specified through the `-i` option. Example with two accounts:

```
huokangoldlogparser -i "C:\Program Files (x86)\World of Warcraft\_retail_\WTF\Account\YOUR_ACCOUNT_ID#1\SavedVariables\!HuokanGoldLogger.lua" -i "C:\Program Files (x86)\World of Warcraft\_retail_\WTF\Account\YOUR_ACCOUNT_ID#2\SavedVariables\!HuokanGoldLogger.lua"
```

### Output

By default, the output will be sent to stdout. The `-o` option can be used to specify a file.

```
huokangoldlogparser -i "!HuokanGoldLogger.lua" -o goldlog.json
```

### Formats

To output in a format other than json, use the `-f` option. Supported formats are `json`, `csv`, and `text`.

```
huokangoldlogparser -i "!HuokanGoldLogger.lua" -f csv
```

### Output Types

In order to generate weekly reports, use the `-t weekly` option.

```
huokangoldlogparser -i "!HuokanGoldLogger.lua" -t weekly
```

### Filtering

`--filter` may be used to limit the output to specific events. To show only mail events and repairs, for example:

```
huokangoldlogparser -i "!HuokanGoldLogger.lua" --filter MAIL_IN MAIL_OUT REPAIR
```
