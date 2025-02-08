# 🇺🇸 🇬🇧 English
## Install
1. Download the `.zip` (github > Code dropdown > Download ZIP)
2. Go to `Edit` > `Preferences` > `Extensions` > `Add Extension`
3. Select the downloaded `.zip` of the language extension
4. Then go to `Edit` > `Preferences` > `General` > `Language` and select the new language in the combobox
5. Press the OK button.

## Conversion script for Weblate files (pre Aseprite v1.3.3)
Aseprite does not support the .ini files from Weblate as of v1.3.2
The developers are planning to add support for it in v1.3.3 though, see [this comment](https://github.com/aseprite/languages/issues/30#issuecomment-1854507501) for more information.

Since the main difference appears to be a different representation of translations with line breaks (\n), I have included 2 scripts for converting the .ini from Weblate into a compatible version.
### Usage
#### Linux 🐧
- Make the script executable by running `chmod +x convert.sh`
- Execute the script by running `. ./convert.sh < input.ini > output.ini`, where `input.ini` is the file downloaded from Weblate.
#### Windows 🪟
- The script takes in 2 optional parameters:
- - `-InputFile`, default: `input.ini`
- - `-OutputFile`, default: `output.ini`
- Run the script by double-clicking `.\convert.ps1`. This requires naming the file from Weblate `input.ini`. Or
- Run the script from PowerShell/terminal like `.\convert.ps1 -InputFile c:\path\to\input.ini -OutputFile c:\path\to\output.ini`
