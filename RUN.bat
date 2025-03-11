@echo off
REM Create a virtual environment if it doesn't exist
if not exist venv (
    echo Creating virtual environment...
    python -m venv venv
) else (
    echo Virtual environment already exists.
)

REM Activate the virtual environment
call venv\Scripts\activate

REM Check if pip needs to be updated
echo Checking pip version...
pip --version > current_pip_version.txt
for /f "tokens=2 delims= " %%a in (current_pip_version.txt) do set current_pip=%%a
del current_pip_version.txt

REM Get the latest pip version
echo Getting latest pip version...
for /f "tokens=*" %%b in ('python -m pip search pip') do (
    echo %%b | find "pip (latest)" > nul
    if not errorlevel 1 (
        set latest_pip=%%b
    )
)

REM Compare the versions and update pip if necessary
echo Current pip version: %current_pip%
echo Latest pip version: %latest_pip%
if "%current_pip%" NEQ "%latest_pip%" (
    echo Updating pip...
    python -m pip install --upgrade pip
) else (
    echo Pip is already up-to-date.
)

REM Check if dependencies need to be installed
if exist requirements.txt (
    echo Checking installed dependencies...
    pip freeze > installed_packages.txt
    fc /b requirements.txt installed_packages.txt > nul
    if errorlevel 1 (
        echo Installing dependencies from requirements.txt...
        pip install -r requirements.txt
    ) else (
        echo All dependencies are already installed.
    )
    del installed_packages.txt
) else (
    echo requirements.txt file not found.
)

REM Change console color to green
@echo off
color a

REM Run main.py
echo Running main.py...
py main.py
