
  SET(ENV{PYTHONPATH} /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/scripts/python:/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib)
  SET(ENV{LD_LIBRARY_PATH} /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/scripts/python:/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib:$ENV{LD_LIBRARY_PATH})
  SET(ENV{BABEL_LIBDIR} /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib/)
  SET(ENV{BABEL_DATADIR} /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data)
  MESSAGE("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/scripts/python:/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib")
  EXECUTE_PROCESS(
  	COMMAND /home/o-o/anaconda3/bin/python /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/test/testdistgeom.py 
  	#WORKING_DIRECTORY @LIBRARY_OUTPUT_PATH@
  	RESULT_VARIABLE import_res
  	OUTPUT_VARIABLE import_output
  	ERROR_VARIABLE  import_output
  )
  
  # Pass the output back to ctest
  IF(import_output)
    MESSAGE(${import_output})
  ENDIF(import_output)
  IF(import_res)
    MESSAGE(SEND_ERROR ${import_res})
  ENDIF(import_res)
