
cd .

call git checkout master
if %ERRORLEVEL% == 0 goto :step1
echo "Errors during checkout.

:step1
call git pull origin master
if %ERRORLEVEL% == 0 goto :success1
echo "Errors encountered during execution.
goto :failure1

:failure1
goto :step1


:success1
cd .
touch abc

git init 
git add .

git commit -m "tasesttsts"

CALL git push origin master
if %ERRORLEVEL% == 0 goto :success2
echo "Errors encountered during execution.
goto : 

:failure2
   git checkout master
	git reset --hard origin/master
	goto :step1 

:success2
echo "Thanks"
