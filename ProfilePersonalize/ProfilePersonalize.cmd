# Set short Date Format
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortDate" /d "MM/dd/yyyy" /t REG_SZ /f

# Set long Date Format
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sLongDate" /d "MMMM d, yyyy" /t REG_SZ /f

# Set Country Location as Canada
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sCountry" /d "Canada" /t REG_SZ /f

# Set Locale Name as Canada
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "LocaleName" /d "en-CA" /t REG_SZ /f

# Set Measurement System (0 - Metric) (1 - U.S)
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "iMeasure" /d "1" /t REG_SZ /f