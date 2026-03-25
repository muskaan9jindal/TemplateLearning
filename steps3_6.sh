#!/bin/bash

# Step3 to create MRC files for both distractor and template PDBs
python step3_CreateVolumes.py

# Loop over values
for i in 4 6
do
    python step4_CreateTetris.py $i
    python step5_SimulateData.py
    python step6_BinReorderReconstruct.py
done
    