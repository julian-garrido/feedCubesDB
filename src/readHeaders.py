'''
Created on Jan 24, 2014

@author: julian Garrido
'''

import os
import astropy.io.fits as fits
import sys

class whispCubes(object):
    '''
    This class read the fits files of whisp cubes and creates sql 
    commands to populate a postgres database
    '''
    

    
    def __init__(self, db):
        '''
        Constructor
        '''
        #self.password = password
        #self.server = server
        #self.user = user
        self.db = db
        

    def readHeaders(self, folder):
        '''
        cubesFolder is the folder where are the data. It will read the headers
        for those files whose end is *cl.fits or *cl.fits
        
        '''
        #get full path for files in the folder
        fullpathList = (os.path.join(folder, x) for x in os.listdir(folder))
        self.files = [f for f in fullpathList if os.path.isfile(f) and (f.endswith("cl.fits") or f.endswith("cl.fit"))]
         
        
        #for file in self.files:
        #    print file
        
        #file = files[4]
        #hdr = fits.getheader(file)
        #self.hdrlist = [fits.getheader(file) for file in files]
            
    
    def initIDCounters(self):
        '''
        It initializes the ID sequence. This method could be improved by
        loading the data from the database.
        '''
        #Sequences
        self.DATA_SET_ID = 1
        self.CHAR_SPECTRAL_ID = 1
        self.CHAR_SPATIAL_ID = 1
        self.CHAR_FLUX_ID = 1
        self.CHAR_TIME_ID = 1
        self.CHAR_VELOCITY_ID = 1
        self.TARGET_ID = 1
        self.DATA_SET_IMAGE_ID = 1
        self.PROVENANCE_ID = 1
        self.TAPERING_ID = 1
        
        
        #FIX values
        self.POLARIZATION_ID = 1
        self.LINE_ID = 1
        self.TAPERING_ID_GAUSSIAN = 1
        self.FACILITY_ID= 1
        self.INSTRUMENT_ID = 1
        self.FORMAT_ID = 1
        self.DATASETTYPE_ID = 1
        self.DATASETSUBTYPE_ID = 1
        self.CHAR_SPECTRA_AXIS_ID = 1
        self.CHAR_SPATIAL_AXIS_ID = 1
        self.CHAR_FLUX_AXIS_ID = 1
        self.TARGETCLASS_ID = 1
        
    def increaseIDCounters(self):
        '''
        Update the counters (ID sequence). 
        '''
        self.DATA_SET_ID += 1
        self.CHAR_SPECTRAL_ID += 1
        self.CHAR_SPATIAL_ID += 1
        self.CHAR_FLUX_ID += 1
        self.CHAR_TIME_ID += 1
        self.CHAR_VELOCITY_ID += 1
        self.TARGET_ID += 1
        self.DATA_SET_IMAGE_ID += 1
        self.PROVENANCE_ID += 1
        self.TAPERING_ID += 1

    def printSQLcommands(self):
        self.f = sys.stdout
        self.printOption = True
        self.createSQLcommands()
        
    def writeSQLcommands(self, outputFile):
        self.outputPath = outputFile
        # Write mode creates a new file or overwrites the existing content of the file.
        # Write mode will _always_ destroy the existing contents of a file.
        try:
            # This will create a new file or **overwrite an existing file**.
            self.f = open(self.outputPath, "w")
            self.printOption = False
            self.createSQLcommands()
            
        except IOError:
            pass
        
    
    def createSQLcommands(self):
        """
        This function requires the previous initialization of self.f as an object where 
        the write method is defined
        
        """
        try:
            #f.writelines(lines) # Write a sequence of strings to a file
            for file in self.files :
                hdr = fits.getheader(file) 
                try:
                    self.f.write("\n\n-- Data for Name: CharTime; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    self.f.write("INSERT INTO \"CharTime\" (\"ID\", \"Location\") VALUES ({}, {});\n".format(self.CHAR_TIME_ID, hdr['DATE-OBS']))
                except KeyError: 
                    self.f.write("INSERT INTO \"CharTime\" (\"ID\", \"Location\") VALUES ({}, {});\n".format(self.CHAR_TIME_ID, "NULL"))
                

                                   
                
                self.f.write("\n-- Data for Name: CharSpectral; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                start = hdr['CRVAL3'] - abs(hdr['CHANSTA'])*hdr['CDELT3']
                stop = hdr['CRVAL3']+ abs(hdr['CHANEND'])*hdr['CDELT3']
                sampleExtent = abs(hdr['CDELT3']) * (hdr['LASTLCH']-hdr['FIRSTLCH'])
                self.f.write("INSERT INTO \"CharSpectral\" (\"ID\", \"Location\", \"Extent\", \"Start\", \"Stop\", \"SampleExtent\", \"Resolution\") VALUES ({}, {}, {}, {}, {}, {}, {});\n".format(
                            self.CHAR_SPECTRAL_ID, hdr['FREQR'], hdr['BANDW'], start, stop, sampleExtent, abs(hdr['CDELT3'])))
                
                
                self.f.write("\n-- Data for Name: CharSpatial; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                location = str(hdr['PCRA']) + ' ' + str (hdr['PCDEC'])
                extent = (abs(hdr['CDELT1']*hdr['NAXIS1']/2)+abs(hdr['CDELT2']*hdr['NAXIS2']/2))/2
                RALoLimit = hdr['CRVAL1']-(hdr['CDELT1']*(hdr['NAXIS1']/2))
                DecLoLimit = hdr['CRVAL2']-(hdr['CDELT2']*(hdr['NAXIS2']/2)) 
                RAHiLimit = hdr['CRVAL1']+(hdr['CDELT1']*(hdr['NAXIS1']/2))  
                DecHiLimit = hdr['CRVAL2']+(hdr['CDELT2']*(hdr['NAXIS2']/2)) 
                LocationLoLimit = str(hdr['CRVAL1']-(hdr['CDELT1']*(hdr['NAXIS1']/2))) + ' ' +  str(hdr['CRVAL2']-(hdr['CDELT2']*(hdr['NAXIS2']/2))) 
                LocationHiLimit = str(hdr['CRVAL1']+(hdr['CDELT1']*(hdr['NAXIS1']/2))) + ' ' +  str(hdr['CRVAL2']+(hdr['CDELT2']*(hdr['NAXIS2']/2)))  
                Resolution = (abs(hdr['CDELT1'])+abs(hdr['CDELT2']))/2
                self.f.write("INSERT INTO \"CharSpatial\" (\"ID\", \"RA\", \"Dec\", \"Location\", \"RALoLimit\", \"DecLoLimit\", \"RAHiLimit\", \"DecHiLimit\", \"LocationLoLimit\", \"LocationHiLimit\", \"Extent\", \"Resolution\") VALUES ({}, {}, {}, '{}', {}, {}, {}, {}, '{}', '{}', {}, {});\n".format(
                            self.CHAR_SPATIAL_ID, hdr['PCRA'], hdr['PCDEC'], location, RALoLimit, DecLoLimit, RAHiLimit, DecHiLimit, LocationLoLimit, LocationHiLimit, extent, Resolution))
                
                
                self.f.write("\n-- Data for Name: CharFlux; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                self.f.write("INSERT INTO \"CharFlux\" (\"ID\", \"Min\", \"Max\", \"StatError\") VALUES ({}, {}, {}, {});\n".format(
                            self.CHAR_FLUX_ID, hdr['DATAMIN'], hdr['DATAMAX'], hdr['NOISE']))
                
                
                self.f.write("\n-- Data for Name: CharVelocity; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                self.f.write("INSERT INTO \"CharVelocity\" (\"ID\", \"Location\") VALUES ({}, {});\n".format(self.CHAR_VELOCITY_ID, hdr['VEL']))
                
                
                self.f.write("\n-- Data for Name: Tapering; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                if hdr['BLGRAD'] == 'GAUSSIAN':
                    if self.TAPERING_ID == 1:
                        self.f.write("INSERT INTO \"Tapering\" (\"ID\", \"Label\") VALUES ({}, '{}');\n".format(self.TAPERING_ID_GAUSSIAN, hdr['BLGRAD']))
                else:
                    self.f.write("INSERT INTO \"Tapering\" (\"ID\", \"Label\") VALUES ({}, '{}');\n".format(self.TAPERING_ID, hdr['BLGRAD']))
                
                
                self.f.write("\n-- Data for Name: DataSetImage; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                axis = str(hdr['NAXIS1']) + ' ' +  str(hdr['NAXIS2']) + ' ' +  str(hdr['NAXIS3'])
                wcsaxes = str(hdr['CTYPE1']) + ' ' +  str(hdr['CTYPE2']) + ' ' +  str(hdr['CTYPE3'])
                self.f.write("INSERT INTO \"DataSetImage\" (\"ID\", \"Axes\", \"Axis\", \"WCSAxes\") VALUES ({}, {}, '{}', '{}');\n".format(
                            self.DATA_SET_IMAGE_ID, hdr['NAXIS'], axis, wcsaxes))
                

                self.f.write("\n-- Data for Name: Provenance; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                try:
                    bmmin = hdr['BMMIN']
                except KeyError: 
                    bmmin = 'NULL'
                try:
                    bmmaj = hdr['BMMAJ']
                except KeyError: 
                    bmmaj = 'NULL'
                try:
                    bmpa = hdr['BMPA']
                except KeyError: 
                    bmpa = 'NULL'
                if hdr['BLGRAD'] == 'GAUSSIAN':
                    tapering_id = self.TAPERING_ID_GAUSSIAN
                else:
                    tapering_id = self.TAPERING_ID
                
                self.f.write("INSERT INTO \"Provenance\" (\"ID\", \"BeamMajorAxis\", \"BeamMinorAxis\", \"BeamPositionAngle\", \"Instrument_ID\", \"Facility_ID\", \"Tapering_ID\") VALUES ({}, {}, {}, {}, {}, {}, {});\n".format(
                            self.PROVENANCE_ID, bmmaj, bmmin, bmpa, self.INSTRUMENT_ID, self.FACILITY_ID, tapering_id))
                
                self.f.write("\n-- Data for Name: Target; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                self.f.write("INSERT INTO \"Target\" (\"ID\", \"Name\", \"Velocity\", \"TargetClass_ID\") VALUES ({}, '{}', {}, {});\n".format(
                            self.TARGET_ID, hdr['OBJECT'], hdr['VELR'], self.TARGETCLASS_ID))
                
                                    
                self.f.write("\n-- Data for Name: DataSet; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                
                statinfo = os.stat(file)
                size = statinfo.st_size
                length = hdr['NAXIS1'] * hdr['NAXIS2'] * hdr['NAXIS3']
                self.f.write("INSERT INTO \"DataSet\" (\"ID\", \"AcReference\", \"Size\", \"DataLength\", \"Format_ID\", \"DataSetType_ID\", \"DataSetSubType_ID\", \"Provenance_ID\", \"Target_ID\", \n")
                self.f.write("\"DataSetImage_ID\", \"CharSpectral_ID\", \"CharSpectralAxis_ID\", \"CharSpatialAxis_ID\", \"CharSpatial_ID\", \"CharFluxAxis_ID\", \"CharFlux_ID\", \"CharTime_ID\") \n")
                self.f.write("   VALUES ({}, '{}', {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {});\n".format(
                            self.DATA_SET_ID, file, size/1024, length, self.FORMAT_ID, self.DATASETTYPE_ID, self.DATASETSUBTYPE_ID, self.PROVENANCE_ID, self.TARGET_ID, 
                            self.DATA_SET_IMAGE_ID, self.CHAR_SPECTRAL_ID, self.CHAR_SPECTRA_AXIS_ID, self.CHAR_SPATIAL_AXIS_ID, self.CHAR_SPATIAL_ID, 
                            self.CHAR_FLUX_AXIS_ID, self.CHAR_FLUX_ID, self.CHAR_TIME_ID))
                
                
                self.f.write("\n-- Data for Name: CharPolarization; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                self.f.write("INSERT INTO \"CharPolarization\" (\"DataSet_ID\", \"Polarization_ID\") VALUES ({}, {});\n".format(
                            self.DATA_SET_ID, self.POLARIZATION_ID))
                
                self.f.write("\n-- Data for Name: DataSetLines; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                self.f.write("INSERT INTO \"DataSetLines\" (\"DataSet_ID\", \"Line_ID\", \"CharVelocity_ID\") VALUES ({}, {}, {});\n".format(
                            self.DATA_SET_ID, self.LINE_ID, self.CHAR_VELOCITY_ID, ))
                
                
                
                self.increaseIDCounters()
                
            #Set values for the sequences
            self.f.write("\n\n-- Set sequences \n")
            self.f.write("\n SELECT pg_catalog.setval('\"DataSet_ID_seq\"', " + str(self.DATA_SET_ID-1) +", true);")
            self.f.write("\n SELECT pg_catalog.setval('\"CharSpectral_ID_seq\"', " + str(self.CHAR_SPECTRAL_ID-1) +", true);")
            self.f.write("\n SELECT pg_catalog.setval('\"CharSpatial_ID_seq\"', " + str(self.CHAR_SPATIAL_ID-1) +", true);")
            self.f.write("\n SELECT pg_catalog.setval('\"CharFlux_ID_seq\"', " + str(self.CHAR_FLUX_ID-1) +", true);")
            self.f.write("\n SELECT pg_catalog.setval('\"CharTime_ID_seq\"', " + str(self.CHAR_TIME_ID-1) +", true);")
            self.f.write("\n SELECT pg_catalog.setval('\"CharVelocity_ID_seq\"', " + str(self.CHAR_VELOCITY_ID-1) +", true);")
            self.f.write("\n SELECT pg_catalog.setval('\"Target_ID_seq\"', " + str(self.TARGET_ID-1) +", true);")
            self.f.write("\n SELECT pg_catalog.setval('\"DataSetImage_ID_seq\"', " + str(self.DATA_SET_IMAGE_ID-1) +", true);")
            self.f.write("\n SELECT pg_catalog.setval('\"Provenance_ID_seq\"', " + str(self.PROVENANCE_ID-1) +", true);")
            self.f.write("\n SELECT pg_catalog.setval('\"Tapering_ID_seq\"', " + str(self.TAPERING_ID-1) +", true);")

        finally:
            if self.printOption == False:
                self.f.close()
        
        
            
    
        
    
if __name__ == '__main__':
    print "main"
    whisp = whispCubes("vodata_cubes")
    whisp.readHeaders('/Users/julian/DATA/WSRT-WHISP/CUBE-HI/reduced')
    whisp.initIDCounters()
    whisp.writeSQLcommands("/Users/julian/src/python_ws/feedCubesDB/output.sql")
    whisp.printSQLcommands()
    
    
    pass