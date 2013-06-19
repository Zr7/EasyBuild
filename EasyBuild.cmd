@echo off
:StartStep
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo  Easy Builder                                         Revision 1.0 by Antz
echo.
echo  Website: http://www.getmangos.co.uk                    
echo     Wiki: http://github.com/mangoswiki/wiki             
echo    Forum: http://community.getmangos.co.uk              
echo.

:Step1
rem ############################### STEP 1 #####################################
echo.
echo  Step 1 : Select Core
echo  ====================
echo   0  - Mangos Zero (Classic)
echo   1  - Mangos One (TBC)
echo   2  - Mangos Two (WotLK)
echo   3  - Mangos Three (Cata) ** WARNING: ALPHA RELEASE **
echo   4  - Mangos Four (MOP)   ** WARNING: UNPLAYABLE - FOR DEVELOPMENT ONLY **
echo   X  - Exit
echo.
set /p corever=Which core would you like to work with ? : 
if %corever% == 0 goto Step2:
if %corever% == 1 goto Step2:
if %corever% == 2 goto Step2:
if %corever% == 3 goto Step2:
if %corever% == 4 goto Step2:
if %corever% == X goto ExitStep:
if %corever% == x goto ExitStep:
goto StartStep:

:Step2
rem ############################### STEP 2 #####################################
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo  Website: http://www.getmangos.co.uk                    
echo     Wiki: http://github.com/mangoswiki/wiki             
echo    Forum: http://community.getmangos.co.uk              
echo.
echo.
echo  Step 2 : Select Activity
echo  ========================
echo   C  - Clone Repositories
echo   CB - Clone and Build
echo   U  - Update Repositories
echo   UB - Update and Build
echo   B  - Build Existing Repositories
echo   P  - Previous Step
echo   X  - Exit
echo.
set /p activity=Please select an activity ? : 
if %activity% == C goto CloneStep:
if %activity% == c goto CloneStep:
if %activity% == CB goto CloneStep:
if %activity% == cb goto CloneStep:
if %activity% == U goto UpdateStep:
if %activity% == u goto UpdateStep:
if %activity% == UB goto UpdateStep:
if %activity% == ub goto UpdateStep:
if %activity% == B goto BuildOnlyStep:
if %activity% == b goto BuildOnlyStep:
if %activity% == P goto StartStep:
if %activity% == p goto StartStep:
if %activity% == X goto ExitStep:
if %activity% == x goto ExitStep:


:ExitStep
echo.
echo  ######################
echo  ## PROCESS ABORTED  ##
echo  ######################
echo.
exit

:BuildOnlyStep
if %corever% == 0 goto BuildZero:
if %corever% == 1 goto BuildOne: 
if %corever% == 2 goto BuildTwo:
if %corever% == 3 goto BuildThree:
if %corever% == 4 goto BuildFour:
goto Step2:

:CloneZero
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                 #####                      
echo  Website: http://www.getmangos.co.uk              ###  ####  #####    #### 
echo                                                   ##   ##    ##  ##  ##  ##
echo     Wiki: http://github.com/mangoswiki/wiki      ##    ####  #####   ##  ##
echo                                                 ##     ##    ## ##   ##  ##
echo    Forum: http://community.getmangos.co.uk      #####  ####  ##  ##   #### 
echo.
echo.
echo  ######################
echo  ## CLONING SERVER   ##
echo  ######################
git clone https://github.com/mangoszero/server 0server

echo.
echo  ######################
echo  ## CLONING SCRIPTS  ##
echo  ######################
cd 0server/src/bindings
git clone https://github.com/mangoszero/scripts scripts

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == CB goto BuildStep:
if %activity% == cb goto BuildStep:

cd ../..
goto CloneComplete:

:CloneOne
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                          ###               
echo  Website: http://www.getmangos.co.uk                    ## ##  ##  ##  ####
echo                                                         ## ##  ### ##  ##  
echo     Wiki: http://github.com/mangoswiki/wiki             ## ##  ######  ####
echo                                                         ## ##  ## ###  ##  
echo    Forum: http://community.getmangos.co.uk               ###   ##  ##  ####
echo.
echo.
echo  ######################
echo  ## CLONING SERVER   ##
echo  ######################
git clone https://github.com/mangosone/server 1server

echo.
echo  ######################
echo  ## CLONING SCRIPTS  ##
echo  ######################
cd 1server/src/bindings
git clone https://github.com/mangosone/scripts scripts

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == CB goto BuildStep:
if %activity% == cb goto BuildStep:

goto CloneComplete:

:CloneTwo
@echo off
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                      ######                
echo  Website: http://www.getmangos.co.uk                   ##   ## ## ##   ### 
echo                                                        ##   ## ## ##  ## ##
echo     Wiki: http://github.com/mangoswiki/wiki            ##   ## ## ##  ## ##
echo                                                        ##    ######   ## ##
echo    Forum: http://community.getmangos.co.uk             ##     ####     ### 
echo.
echo.
echo ######################
echo ## CLONING SERVER   ##
echo ######################
git clone https://github.com/mangostwo/server 2server

echo.
echo ######################
echo ## CLONING SCRIPTS  ##
echo ######################
cd 2server/src/bindings
git clone https://github.com/mangostwo/scripts scripts

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == CB goto BuildStep:
if %activity% == cb goto BuildStep:

goto CloneComplete:

:CloneThree
@echo off
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                             ######                         
echo  Website: http://www.getmangos.co.uk          ##  ## ##  #####   ####  ####
echo                                               ##  ## ##  ##  ##  ##    ##  
echo     Wiki: http://github.com/mangoswiki/wiki   ##  #####  #####   ####  ####
echo                                               ##  ## ##  ## ##   ##    ##  
echo    Forum: http://community.getmangos.co.uk    ##  ## ##  ##  ##  ####  ####
echo.
echo.
echo  ######################
echo  ## CLONING SERVER   ##
echo  ######################
git clone https://github.com/mangosthree/server 3server

echo.
echo  ######################
echo  ## CLONING SCRIPTS  ##
echo  ######################
cd 3server/src/bindings
git clone https://github.com/mangosthree/scripts scripts

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == CB goto BuildStep:
if %activity% == cb goto BuildStep:

goto CloneComplete:

:CloneFour
@echo off
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                 ######                    
echo Website: http://www.getmangos.co.uk             ##     ###   ## ##  ##### 
echo                                                 ####  ## ##  ## ##  ##  ##
echo    Wiki: http://github.com/mangoswiki/wiki      ##    ## ##  ## ##  ##### 
echo                                                 ##    ## ##  ## ##  ## ## 
echo   Forum: http://community.getmangos.co.uk       ##     ###    ###   ##  ##
echo.
echo.
echo  ######################
echo  ## CLONING SERVER   ##
echo  ######################
git clone https://github.com/mangosfour/server 4server

echo.
echo  ######################
echo  ## CLONING SCRIPTS  ##
echo  ######################
cd 4server/src/bindings
git clone https://github.com/mangosfour/scripts scripts

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == CB goto BuildStep:
if %activity% == cb goto BuildStep:

goto CloneComplete:


:CloneStep
if %corever% == 0 goto CloneZero:
if %corever% == 1 goto CloneOne: 
if %corever% == 2 goto CloneTwo:
if %corever% == 3 goto CloneThree:
if %corever% == 4 goto CloneFour:
goto StartStep:

:CloneComplete
cd ../..
echo.
echo  ######################
echo  ##  CLONE COMPLETE  ##
echo  ######################
echo.
exit

:UpdateStep
if %corever% == 0 goto UpdateZero:
if %corever% == 1 goto UpdateOne: 
if %corever% == 2 goto UpdateTwo:
if %corever% == 3 goto UpdateThree:
if %corever% == 4 goto UpdateFour:
goto Step2:

:UpdateComplete
cd ../..
echo.
echo  ######################
echo  ## UPDATE COMPLETE  ##
echo  ######################
echo.
exit


:UpdateZero
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                 #####                      
echo  Website: http://www.getmangos.co.uk              ###  ####  #####    #### 
echo                                                   ##   ##    ##  ##  ##  ##
echo     Wiki: http://github.com/mangoswiki/wiki      ##    ####  #####   ##  ##
echo                                                 ##     ##    ## ##   ##  ##
echo    Forum: http://community.getmangos.co.uk      #####  ####  ##  ##   #### 
echo.
echo.
echo  ######################
echo  ## UPDATING SERVER  ##
echo  ######################
cd 0server
rem re-pull the modified CMakeLists file
git checkout src/bindings/CMakeLists.txt
git pull

echo.
echo  ######################
echo  ## UPDATING SCRIPTS ##
echo  ######################
cd src/bindings
git pull

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == UB goto BuildStep:
if %activity% == ub goto BuildStep:

cd ../..
goto UpdateComplete:


:BuildZero
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                 #####                      
echo  Website: http://www.getmangos.co.uk              ###  ####  #####    #### 
echo                                                   ##   ##    ##  ##  ##  ##
echo     Wiki: http://github.com/mangoswiki/wiki      ##    ####  #####   ##  ##
echo                                                 ##     ##    ## ##   ##  ##
echo    Forum: http://community.getmangos.co.uk      #####  ####  ##  ##   #### 
echo.
echo.
cd 0server/win
goto BuildStep:


:UpdateOne
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                          ###               
echo  Website: http://www.getmangos.co.uk                    ## ##  ##  ##  ####
echo                                                         ## ##  ### ##  ##  
echo     Wiki: http://github.com/mangoswiki/wiki             ## ##  ######  ####
echo                                                         ## ##  ## ###  ##  
echo    Forum: http://community.getmangos.co.uk               ###   ##  ##  ####
echo.
echo.
echo  ######################
echo  ## UPDATING SERVER  ##
echo  ######################
cd 1server
rem re-pull the modified CMakeLists file
git checkout src/bindings/CMakeLists.txt
git pull

echo.
echo  ######################
echo  ## UPDATING SCRIPTS ##
echo  ######################
cd src/bindings
git pull

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == UB goto BuildStep:
if %activity% == ub goto BuildStep:

cd ../..
goto UpdateComplete:

:BuildOne
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                          ###               
echo  Website: http://www.getmangos.co.uk                    ## ##  ##  ##  ####
echo                                                         ## ##  ### ##  ##  
echo     Wiki: http://github.com/mangoswiki/wiki             ## ##  ######  ####
echo                                                         ## ##  ## ###  ##  
echo    Forum: http://community.getmangos.co.uk               ###   ##  ##  ####
echo.
echo.
cd 1server/win
goto BuildStep:


:UpdateTwo
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                      ######                
echo  Website: http://www.getmangos.co.uk                   ##   ## ## ##   ### 
echo                                                        ##   ## ## ##  ## ##
echo     Wiki: http://github.com/mangoswiki/wiki            ##   ## ## ##  ## ##
echo                                                        ##    ######   ## ##
echo    Forum: http://community.getmangos.co.uk             ##     ####     ### 
echo.
echo.
echo  ######################
echo  ## UPDATING SERVER  ##
echo  ######################
cd 2server
rem re-pull the modified CMakeLists file
git checkout src/bindings/CMakeLists.txt
git pull

echo.
echo  ######################
echo  ## UPDATING SCRIPTS ##
echo  ######################
cd src/bindings
git pull

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == UB goto BuildStep:
if %activity% == ub goto BuildStep:

cd ../..
goto UpdateComplete:


:BuildTwo
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                      ######                
echo  Website: http://www.getmangos.co.uk                   ##   ## ## ##   ### 
echo                                                        ##   ## ## ##  ## ##
echo     Wiki: http://github.com/mangoswiki/wiki            ##   ## ## ##  ## ##
echo                                                        ##    ######   ## ##
echo    Forum: http://community.getmangos.co.uk             ##     ####     ### 
echo.
echo.
cd 2server/win
goto BuildStep:

:UpdateThree
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                             ######                         
echo  Website: http://www.getmangos.co.uk          ##  ## ##  #####   ####  ####
echo                                               ##  ## ##  ##  ##  ##    ##  
echo     Wiki: http://github.com/mangoswiki/wiki   ##  #####  #####   ####  ####
echo                                               ##  ## ##  ## ##   ##    ##  
echo    Forum: http://community.getmangos.co.uk    ##  ## ##  ##  ##  ####  ####
echo.
echo.
echo  ######################
echo  ## UPDATING SERVER  ##
echo  ######################
cd 3server
rem re-pull the modified CMakeLists file
git checkout src/bindings/CMakeLists.txt
git pull

echo.
echo  ######################
echo  ## UPDATING SCRIPTS ##
echo  ######################
cd src/bindings
git pull

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == UB goto BuildStep:
if %activity% == ub goto BuildStep:

cd ../..
goto UpdateComplete:


:BuildThree
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                             ######                         
echo  Website: http://www.getmangos.co.uk          ##  ## ##  #####   ####  ####
echo                                               ##  ## ##  ##  ##  ##    ##  
echo     Wiki: http://github.com/mangoswiki/wiki   ##  #####  #####   ####  ####
echo                                               ##  ## ##  ## ##   ##    ##  
echo    Forum: http://community.getmangos.co.uk    ##  ## ##  ##  ##  ####  ####
echo.
echo.
cd 3server/win
goto BuildStep:

:UpdateFour
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                 ######                    
echo Website: http://www.getmangos.co.uk             ##     ###   ## ##  ##### 
echo                                                 ####  ## ##  ## ##  ##  ##
echo    Wiki: http://github.com/mangoswiki/wiki      ##    ## ##  ## ##  ##### 
echo                                                 ##    ## ##  ## ##  ## ## 
echo   Forum: http://community.getmangos.co.uk       ##     ###    ###   ##  ##
echo.
echo.
echo  ######################
echo  ## UPDATING SERVER  ##
echo  ######################
cd 4server
rem re-pull the modified CMakeLists file
git checkout src/bindings/CMakeLists.txt
git pull

echo.
echo  ######################
echo  ## UPDATING SCRIPTS ##
echo  ######################
cd src/bindings
git pull

rem #################################################################
rem ## auto update the CMakeLists.txt file to include this project  #
rem #################################################################
echo add_subdirectory(scripts) > CMakeLists.txt
cd ../../win

if %activity% == UB goto BuildStep:
if %activity% == ub goto BuildStep:

cd ../..
goto UpdateComplete:


:BuildFour
cls
echo.
echo  ####       ####            ###     ###   ########    #######     ######## 
echo  #####     #####            ####    ###  ##########  #########   ##########
echo  #####     #####            #####   ###  ##########  #########   ##########
echo  ######   ######            #####   ###  ###        ####   ####  ###       
echo  ######   ######    ####    ######  ###  ###        ###     ###  ###       
echo  ####### #######   ######   ######  ###  ###  ##### ###     ###  ########  
echo  ### ### ### ###   ######   ####### ###  ###  ##### ###     ###  ######### 
echo  ### ### ### ###  ###  ###  ### ### ###  ###  ##### ###     ###   #########
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###        ####
echo  ### ####### ###  ###  ###  ###  ######  ###    ### ###     ###         ###
echo  ###  #####  ### ########## ###   #####  ###   #### ####   ####        ####
echo  ###  #####  ### ########## ###   #####  #########   #########   ##########
echo  ###  #####  ### ###    ### ###    ####  #########   #########   ######### 
echo  ###   ###   ### ###    ### ###     ###   #######     #######     #######  
echo.
echo                                                 ######                    
echo Website: http://www.getmangos.co.uk             ##     ###   ## ##  ##### 
echo                                                 ####  ## ##  ## ##  ##  ##
echo    Wiki: http://github.com/mangoswiki/wiki      ##    ## ##  ## ##  ##### 
echo                                                 ##    ## ##  ## ##  ## ## 
echo   Forum: http://community.getmangos.co.uk       ##     ###    ###   ##  ##
echo.
echo.
cd 4server/win
goto BuildStep:

:BuildStep
echo.
echo  ######################
echo  ## BUILDING SERVER  ##
echo  ######################

msbuild mangosdVC100.sln /p:Configuration=Release
cd ..
cd src\bindings\scripts
msbuild scriptVC100.sln /p:Configuration=Release
cd ../../../bin

