'''
Created on Jan 24, 2014

@author: julian Garrido
'''

import os
import astropy.io.fits as fits

class whispCubes(object):
    '''
    This class read the fits files of whisp cubes and creates sql 
    commands to populate a postgres database
    '''
    

    
    def __init__(self, db, outputFile):
        '''
        Constructor
        '''
        #self.password = password
        #self.server = server
        #self.user = user
        self.db = db
        self.outputPath = outputFile
        

    def readHeaders(self, folder):
        '''
        cubesFolder is the folder where are the data. It will read the headers
        for those files whose end is *cl.fits or *cl.fits
        
        '''
        #get full path for files in the folder
        fullpathList = (os.path.join(folder, x) for x in os.listdir(folder))
        files = [f for f in fullpathList if os.path.isfile(f) and (f.endswith("cl.fits") or f.endswith("cl.fit"))]
         
        
        for file in files:
            print file
        
        #file = files[4]
        #hdr = fits.getheader(file)
        self.hdrlist = [fits.getheader(file) for file in files]
            
    
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
        self.CHAR_POLARIZATION_ID = 1
        self.CHAR_VELOCITY_ID = 1
        self.TARGET_ID = 1
        self.DATA_SET_IMAGE_ID = 1
        self.PROVENANCE_ID = 1
        self.TAPERING_ID = 2
        self.DATA_SET_LINES_ID = 1
        self.PROVENANCE_ID = 1
        
        
        #FIX values
        self.POLARIZATION_ID = 1
        self.LINE_ID = 1
        self.TAPERING_ID_GAUSSIAN = 1
        self.FACILITY_ID= 1
        self.INSTRUMENT_ID = 1
        
        #to be removed
        self.CHAR_FLUX_LINE_AXIS_ID = 1
        self.CHAR_FLUX_LINE_ID = 1
        self.CHAR_VELOCITY_AXIS = 1
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
        self.PROVENANCE_ID += 1

        
    def createSQLcommands(self):
        # Write mode creates a new file or overwrites the existing content of the file.
        # Write mode will _always_ destroy the existing contents of a file.
        try:
            # This will create a new file or **overwrite an existing file**.
            f = open(self.outputPath, "w")
            try:
                #f.writelines(lines) # Write a sequence of strings to a file
                i = 1
                for hdr in self.hdrlist :
                    try:
                        f.write("\n\n-- Data for Name: CharTime; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                        f.write("INSERT INTO \"CharTime\" (ID, Location) VALUES ({}, {});\n".format(self.CHAR_TIME_ID, hdr['DATE-OBS']))
                    except KeyError: 
                        f.write("INSERT INTO \"CharTime\" (ID, Location) VALUES ({}, {});\n".format(self.CHAR_TIME_ID, "NULL"))
                    

                    f.write("\n-- Data for Name: CharPolarization; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    f.write("INSERT INTO \"CharPolarization\" (DataSet_ID, Polarization_ID) VALUES ({}, {});\n".format(
                                self.DATA_SET_ID, self.POLARIZATION_ID))
                    
                    
                    f.write("\n-- Data for Name: CharSpectral; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    start = hdr['CRVAL3'] - abs(hdr['CHANSTA'])*hdr['CDELT3']
                    stop = hdr['CRVAL3']+ abs(hdr['CHANEND'])*hdr['CDELT3']
                    sampleExtent = abs(hdr['CDELT3']) * (hdr['LASTLCH']-hdr['FIRSTLCH'])
                    f.write("INSERT INTO \"CharSpectral\" (ID, Location, Extent, Start, Stop, SampleExtent, Resolution) VALUES ({}, {}, {}, {}, {}, {}, {});\n".format(
                                self.CHAR_SPECTRAL_ID, hdr['FREQR'], hdr['BANDW'], start, stop, sampleExtent, abs(hdr['CDELT3'])))
                    
                    
                    f.write("\n-- Data for Name: CharSpatial; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    location = str(hdr['PCRA']) + ' ' + str (hdr['PCDEC'])
                    extent = (abs(hdr['CDELT1']*hdr['NAXIS1']/2)+abs(hdr['CDELT2']*hdr['NAXIS2']/2))/2
                    RALoLimit = hdr['CRVAL1']-(hdr['CDELT1']*(hdr['NAXIS1']/2))
                    DecLoLimit = hdr['CRVAL2']-(hdr['CDELT2']*(hdr['NAXIS2']/2)) 
                    RAHiLimit = hdr['CRVAL1']+(hdr['CDELT1']*(hdr['NAXIS1']/2))  
                    DecHiLimit = hdr['CRVAL2']+(hdr['CDELT2']*(hdr['NAXIS2']/2)) 
                    LocationLoLimit = str(hdr['CRVAL1']-(hdr['CDELT1']*(hdr['NAXIS1']/2))) + ' ' +  str(hdr['CRVAL2']-(hdr['CDELT2']*(hdr['NAXIS2']/2))) 
                    LocationHiLimit = str(hdr['CRVAL1']+(hdr['CDELT1']*(hdr['NAXIS1']/2))) + ' ' +  str(hdr['CRVAL2']+(hdr['CDELT2']*(hdr['NAXIS2']/2)))  
                    Resolution = (abs(hdr['CDELT1'])+abs(hdr['CDELT2']))/2
                    f.write("INSERT INTO \"CharSpatial\" (ID, RA, Dec, Location, RALoLimit, DecLoLimit, RAHiLimit, DecHiLimit, LocationLoLimit, LocationHiLimit, Extent, Resolution) VALUES ({}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {});\n".format(
                                self.CHAR_SPATIAL_ID, hdr['PCRA'], hdr['PCDEC'], location, RALoLimit, DecLoLimit, RAHiLimit, DecHiLimit, LocationLoLimit, LocationHiLimit, extent, Resolution))
                    
                    
                    f.write("\n-- Data for Name: CharFlux; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    f.write("INSERT INTO \"CharFlux\" (ID, Min, Max, StatError) VALUES ({}, {}, {}, {});\n".format(
                                self.CHAR_FLUX_ID, hdr['DATAMIN'], hdr['DATAMAX'], hdr['NOISE']))
                    
                    
                    f.write("\n-- Data for Name: CharVelocity; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    f.write("INSERT INTO \"CharVelocity\" (ID, Location) VALUES ({}, {});\n".format(self.CHAR_VELOCITY_ID, hdr['VEL']))
                    
                    
                    f.write("\n-- Data for Name: DataSetLines; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    f.write("INSERT INTO \"DataSetLines\" (DataSet_ID, Line_ID, CharVelocity_ID) VALUES ({}, {}, {});\n".format(
                                self.DATA_SET_ID, self.LINE_ID, self.CHAR_VELOCITY_ID, ))
                    
                    
                    f.write("\n-- Data for Name: Tapering; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    if hdr['BLGRAD'] == 'GAUSSIAN':
                        f.write("INSERT INTO \"Tapering\" (ID, Label) VALUES ({}, '{}');\n".format(self.TAPERING_ID_GAUSSIAN, hdr['BLGRAD']))
                    else:
                        f.write("INSERT INTO \"Tapering\" (ID, Label) VALUES ({}, '{}');\n".format(self.TAPERING_ID, hdr['BLGRAD']))
                    
                    
                    f.write("\n-- Data for Name: DataSetImage; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    axis = str(hdr['NAXIS1']) + ' ' +  str(hdr['NAXIS2']) + ' ' +  str(hdr['NAXIS3'])
                    wcsaxes = str(hdr['CTYPE1']) + ' ' +  str(hdr['CTYPE2']) + ' ' +  str(hdr['CTYPE3'])
                    f.write("INSERT INTO \"DataSetImage\" (ID, Axes, Axis, WCSAxes) VALUES ({}, {}, '{}', '{}');\n".format(
                                self.DATA_SET_IMAGE_ID, hdr['NAXIS'], axis, wcsaxes))
                    

                    f.write("\n-- Data for Name: Provenance; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
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
                    
                    f.write("INSERT INTO \"Provenance\" (ID, BeamMajorAxis, BeamMinorAxis, BeamPositionAngle, Instrument_ID, Facility_ID, Tapering_ID) VALUES ({}, {}, {}, {}, {}, {}, {});\n".format(
                                self.PROVENANCE_ID, bmmaj, bmmin, bmpa, self.INSTRUMENT_ID, self.FACILITY_ID, tapering_id))
                    
                    f.write("\n-- Data for Name: Target; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes\n")
                    f.write("INSERT INTO \"Target\" (ID, Name, Velocity, TargetClass_ID) VALUES ({}, '{}', {}, {});\n".format(
                                self.TARGET_ID, hdr['OBJECT'], hdr['VELR'], self.TARGETCLASS_ID))
                    
                    
                    
                    
                    self.increaseIDCounters()
            finally:
                f.close()
        except IOError:
            pass
        
            
    
        
    
if __name__ == '__main__':
    print "main"
    whisp = whispCubes("vodata_cubes", "/Users/julian/src/python_ws/feedCubesDB/output.sql")
    whisp.readHeaders('/Users/julian/DATA/WSRT-WHISP/CUBE-HI/reduced')
    whisp.initIDCounters()
    whisp.createSQLcommands()
    
    pass