@echo off
echo Current working directory is: %cd%

REM Get the current date in the format of "YYYY-MM-DD"
set "today=%date:~6,4%-%date:~0,2%-%date:~3,2%"

if exist "%today%.md" (
  set "today=%today%_new"
)

REM Create a new Markdown file with the name in the format of "YYYY-MM-DD.md"
echo Creating new Markdown file: %today%.md
echo # Dev Logs - %today%>%today%.md
echo.>>%today%.md
echo ## TaskList>>%today%.md
echo.>>%today%.md
echo - [ ] Task One>>%today%.md
echo.>>%today%.md
echo ## QnA>>%today%.md
echo.>>%today%.md
echo **Q.** What is your question?>>%today%.md
echo.>>%today%.md
echo *Answer* "This is my answer.">>%today%.md

REM Open the new Markdown file in Visual Studio Code
@REM REM code %today%.md

REM Close the Command Prompt window
exit