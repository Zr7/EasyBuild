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
echo  Easy Builder                                         Revision 1.2 by Antz
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
echo  Step 2 : Select Default Path / Folder
echo  =====================================

echo.
set buildfoldername=%corever%server
echo The Default folder is set as "%buildfoldername%"
set /p foldername=Please enter new path / foldername (Enter uses default)? 
IF [%foldername%]==[] goto Step3:
set buildfoldername=%foldername%

:Step3
rem ############################### STEP 3 #####################################
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
echo  Step 3 : Select Activity
echo  ========================

echo.

if exist %buildfoldername% goto CanNotClone:
echo   C  - Clone Repositories
echo   CB - Clone and Build
:CanNotClone
if not exist %buildfoldername% goto SkipOptions:
echo   U  - Update Repositories
echo   UB - Update and Build
echo   B  - Build Existing Repositories
:SkipOptions
echo   P  - Previous Step
echo   X  - Exit
echo.
set /p activity=Please select an activity ? : 

if exist %buildfoldername% goto MustNotClone:
if %activity% == C goto CloneStep:
if %activity% == c goto CloneStep:
if %activity% == CB goto CloneStep:
if %activity% == cb goto CloneStep:

:MustNotClone
if %activity% == P goto StartStep:
if %activity% == p goto StartStep:
if %activity% == X goto ExitStep:
if %activity% == x goto ExitStep:

rem If the server folder does not exist, bail
if not exist %buildfoldername% goto PathError:

if %activity% == U goto UpdateStep:
if %activity% == u goto UpdateStep:
if %activity% == UB goto UpdateStep:
if %activity% == ub goto UpdateStep:
if %activity% == B goto BuildOnlyStep:
if %activity% == b goto BuildOnlyStep:

goto ExitStep:

:PathError
echo.
echo  #################################
echo  ## THE SERVER MUST EXIST FIRST ##
echo  #################################
echo.
exit



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
echo  ######################
echo  ## CLONING SERVER   ##
echo  ######################
git clone https://github.com/mangoszero/server %buildfoldername%

echo.
echo  ######################
echo  ## CLONING SCRIPTS  ##
echo  ######################
cd %buildfoldername%/src/bindings
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
git clone https://github.com/mangosone/server %buildfoldername%

echo.
echo  ######################
echo  ## CLONING SCRIPTS  ##
echo  ######################
cd %buildfoldername%/src/bindings
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
git clone https://github.com/mangostwo/server %buildfoldername%

echo.
echo ######################
echo ## CLONING SCRIPTS  ##
echo ######################
cd %buildfoldername%/src/bindings
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
git clone https://github.com/mangosthree/server %buildfoldername%

echo.
echo  ######################
echo  ## CLONING SCRIPTS  ##
echo  ######################
cd %buildfoldername%/src/bindings
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
git clone https://github.com/mangosfour/server %buildfoldername%

echo.
echo  ######################
echo  ## CLONING SCRIPTS  ##
echo  ######################
cd %buildfoldername%/src/bindings
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
cd %buildfoldername%
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
cd %buildfoldername%/win
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
cd %buildfoldername%
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
cd %buildfoldername%/win
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
cd %buildfoldername%
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
cd %buildfoldername%/win
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
cd %buildfoldername%
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
cd %buildfoldername%/win
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
cd %buildfoldername%
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
cd %buildfoldername%/win
goto BuildStep:

:BuildStep
echo.
echo  ######################
echo  ## BUILDING SERVER  ##
echo  ######################
msbuild mangosdVC100.sln /p:Configuration=Release /t:Clean;Rebuild
cd ..

echo.
echo  #########################
echo  ## BUILDING EXTRACTORS ##
echo  #########################
rem pause
rem copy win\VC100\zlib__Win32_Release\zlib.lib contrib\extractor
rem pause
rem msbuild contrib\extractor\VC100_AD.sln /p:Configuration=Release 
rem pause
msbuild vmap_extractor\win\vmapExtractor_VC100.sln /p:Configuration=Release /t:Clean;Rebuild
msbuild contrib\vmap_assembler\vmap_assemblerVC100.sln /p:Configuration=Release /t:Clean;Rebuild
msbuild contrib\mmap\win\MoveMapGen_VC100.sln /p:Configuration=Release /t:Clean;Rebuild

echo.
echo  ######################
echo  ## BUILDING SCRIPTS ##
echo  ######################
cd src\bindings\scripts
msbuild scriptVC100.sln /p:Configuration=Release /t:Clean;Rebuild
cd ../../../bin

