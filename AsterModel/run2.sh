echo "Prepare....>>>>>>" 
mkdir asteroutput
mkdir pythonOutput
ln -s ../*.comm inputAster.comm
ln -s ../*.med inputMesh.med
# VAR=$(shuf -i 555-1000 -n 1)
# sed -i "s|PATH_OF_THE_CURRENT_FOLDER|$(pwd)|g" asterinput/asterInput1.py
# sed -i "s|PATH_OF_THE_CURRENT_FOLDER|$(pwd)|g" asterinput/ASTERRUN.export
# sed -i "s|RANDOMNUMBER|$VAR|g" asterinput/ASTERRUN.export

# run the simulation using code aster
echo "Run....>>>>>>"
/opt/aster146/bin/as_run ASTERRUN.export 2> $(pwd)/error.log

# echo "Change the variable back to the default value....>>>>>>"
# sed -i "s|$VAR|RANDOMNUMBER|g" asterinput/ASTERRUN.export
# sed -i "s|$(pwd)|PATH_OF_THE_CURRENT_FOLDER|g" asterinput/ASTERRUN.export
# sed -i "s|$(pwd)|PATH_OF_THE_CURRENT_FOLDER|g" asterinput/asterInput1.py