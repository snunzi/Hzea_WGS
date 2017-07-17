# Hzea_WGS
Author: Schyler O. Nunziata

Whole Genome Sequencing of 10 H. zea samples to screen for selection between resistant and susceptible plots
	All files are located on SON's AWS EBS. Sequence data and analysis will be backed up to google drive and ultimately a external storage device.

PROJECT SAMPLE INFORMATION
	H. zea Genome Assembly: hz5p2-fixed

	Sample 	R/S 	Original Well Plate ID
	B1 	Resistant 	Tabashnik Resistant Plate A6
	C1 	Resistant 	Tabashnik Resistant Plate F6
	D1 	Resistant 	Tabashnik Resistant Plate B6
	E1 	Resistant 	Tabashnik Resistant Plate G5
	H1 	Resistant 	Tabashnik Resistant Plate H5
	D2 	Susceptible 	Tabashnik Susceptible Plate C5
	F2 	Susceptible 	Tabashnik Susceptible Plate D7
	G2 	Susceptible 	Tabashnik Susceptible Plate F4
	D3 	Susceptible 	Tabashnik Susceptible Plate A7
	E3 	Susceptible 	Tabashnik Susceptible Plate D5

FILE SIZES FOR EBS SIZING PURPOSES
	Raw Data: 90GB

FILE PROCESSING STEPS AND SCRIPTS
Raw read quality filtering
	Program: NGS QC Toolkit
		Parameters:
			Quality Filtering (-l 70 -s 20)
				Usage: perl IlluQC.pl -pe R1.fq R2.fq 2 A -l 70 -s 20
			Quality Trimming
