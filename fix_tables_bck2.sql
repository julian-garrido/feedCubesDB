--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.11
-- Dumped by pg_dump version 9.3.1
-- Started on 2014-02-07 10:36:07 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = vodata_cubes, pg_catalog;

--
-- TOC entry 2262 (class 0 OID 131347)
-- Dependencies: 171
-- Data for Name: CharFluxAxis; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "CharFluxAxis" ("ID", "AxisName", "UCD", "Unit") VALUES (1, NULL, NULL, 'W.U.');


--
-- TOC entry 2291 (class 0 OID 0)
-- Dependencies: 170
-- Name: CharFluxAxis_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"CharFluxAxis_ID_seq"', 1, true);


--
-- TOC entry 2264 (class 0 OID 131420)
-- Dependencies: 183
-- Data for Name: CharSpatialAxis; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "CharSpatialAxis" ("ID", "AxisName", "UCD", "Unit") VALUES (1, NULL, NULL, 'deg');


--
-- TOC entry 2292 (class 0 OID 0)
-- Dependencies: 182
-- Name: CharSpatialAxis_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"CharSpatialAxis_ID_seq"', 1, true);


--
-- TOC entry 2266 (class 0 OID 131443)
-- Dependencies: 187
-- Data for Name: CharSpectralAxis; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "CharSpectralAxis" ("ID", "AxisName", "UCD", "Unit") VALUES (1, NULL, NULL, 'Hz');


--
-- TOC entry 2293 (class 0 OID 0)
-- Dependencies: 186
-- Name: CharSpectralAxis_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"CharSpectralAxis_ID_seq"', 1, true);


--
-- TOC entry 2268 (class 0 OID 131685)
-- Dependencies: 227
-- Data for Name: DataSetSubType; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "DataSetSubType" ("ID", "Label") VALUES (1, 'Cube');


--
-- TOC entry 2294 (class 0 OID 0)
-- Dependencies: 226
-- Name: DataSetSubType_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"DataSetSubType_ID_seq"', 1, true);


--
-- TOC entry 2270 (class 0 OID 131694)
-- Dependencies: 229
-- Data for Name: DataSetType; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "DataSetType" ("ID", "Label") VALUES (1, 'Cube');


--
-- TOC entry 2295 (class 0 OID 0)
-- Dependencies: 228
-- Name: DataSetType_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"DataSetType_ID_seq"', 1, true);


--
-- TOC entry 2272 (class 0 OID 131712)
-- Dependencies: 233
-- Data for Name: Facility; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "Facility" ("ID", "Label") VALUES (1, 'Westerbork Synthesis Radio Telescope (WSRT)');


--
-- TOC entry 2296 (class 0 OID 0)
-- Dependencies: 232
-- Name: Facility_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"Facility_ID_seq"', 1, true);


--
-- TOC entry 2274 (class 0 OID 131721)
-- Dependencies: 235
-- Data for Name: Format; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "Format" ("ID", "Label") VALUES (2, 'GDS');
INSERT INTO "Format" ("ID", "Label") VALUES (1, 'FITS');


--
-- TOC entry 2297 (class 0 OID 0)
-- Dependencies: 234
-- Name: Format_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"Format_ID_seq"', 2, true);


--
-- TOC entry 2276 (class 0 OID 131730)
-- Dependencies: 237
-- Data for Name: Instrument; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "Instrument" ("ID", "Label") VALUES (1, 'WSRT');


--
-- TOC entry 2298 (class 0 OID 0)
-- Dependencies: 236
-- Name: Instrument_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"Instrument_ID_seq"', 1, true);


--
-- TOC entry 2278 (class 0 OID 131739)
-- Dependencies: 239
-- Data for Name: Line; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "Line" ("ID", "Label", "RestFrequency") VALUES (1, NULL, 1420405752);


--
-- TOC entry 2299 (class 0 OID 0)
-- Dependencies: 238
-- Name: Line_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"Line_ID_seq"', 1, true);


--
-- TOC entry 2280 (class 0 OID 131748)
-- Dependencies: 241
-- Data for Name: Polarization; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "Polarization" ("ID", "Label") VALUES (1, 'L');


--
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 240
-- Name: Polarization_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"Polarization_ID_seq"', 1, true);


--
-- TOC entry 2282 (class 0 OID 131796)
-- Dependencies: 251
-- Data for Name: ServiceResponse; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (1, NULL, 'CoordSysID', NULL, 'ID string for coordinate system', 'CoordSys.ID', NULL, 'char', '*', NULL, 'CoordSys', 'CoordSysID', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (2, NULL, 'SpaceFrameID', NULL, 'ID string for spatial frame', 'CoordSys.SpaceFrame.ID', 'meta.id', 'char', '*', NULL, 'CoordSysSpatial', 'Identifier', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (3, NULL, 'SpaceFrameName', NULL, 'Spatial coordinate frame name', 'CoordSys.SpaceFrame.Name', 'pos.frame', 'char', '*', NULL, 'CoordSysSpatial', 'Name', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (4, NULL, 'SpaceFrameUCD', NULL, 'Space frame UCD', 'CoordSys.SpaceFrame.UCD', 'meta.ucd', 'char', '*', NULL, 'CoordSysSpatial', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (5, NULL, 'SpaceFrameRefPos', NULL, 'Origin of SpaceFrame', 'CoordSys.SpaceFrame.RefPos', '', 'char', '*', NULL, 'CoordSysSpatial', 'RefPos', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (6, NULL, 'SpaceFrameEquinox', NULL, 'Equinox', 'CoordSys.SpaceFrame.Equinox', 'time.equinox;pos.frame', 'double', NULL, 'y', 'CoordSysSpatial', 'Equinox', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (7, NULL, 'TimeFrameID', NULL, 'ID string for time frame', 'CoordSys.TimeFrame.ID', 'meta.id', 'char', '*', NULL, 'CoordSysTime', 'Identfier', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (8, NULL, 'TimeFrameName', NULL, 'Timescale', 'CoordSys.TimeFrame.Name', 'time.scale', 'char', '*', NULL, 'CoordSysTime', 'Name', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (9, NULL, 'TimeFrameUCD', NULL, 'Time frame UCD', 'CoordSys.TimeFrame.UCD', 'meta.ucd', 'char', '*', NULL, 'CoordSysTime', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (10, NULL, 'TimeFrameRefPos', NULL, 'Location for times of photon arrival', 'CoordSys.TimeFrame.RefPos', 'time.scale', 'char', '*', NULL, 'CoordSysTime', 'RefPos', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (11, NULL, 'TimeFrameZero', NULL, 'Zero point of timescale in MJD', 'CoordSys.TimeFrame.Zero', 'arith.zp;time', 'double', NULL, 'd', 'CoordSysTime', 'Zero', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (12, NULL, 'SpectralFrameID', NULL, 'ID string for spectral frame', 'CoordSys.SpectralFrame.ID', 'meta.id', 'char', '*', NULL, 'CoordSysSpectral', 'Identifier', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (13, NULL, 'SpectralFrameName', NULL, 'Spectral frame name', 'CoordSys.SpectralFrame.Name', NULL, 'char', '*', NULL, 'CoordSysSpectral', 'Name', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (14, NULL, 'SpectralFrameUCD', NULL, 'Spectral frame UCD', 'CoordSys.SpectralFrame.UCD', 'meta.ucd', 'char', '*', NULL, 'CoordSysSpectral', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (15, NULL, 'SpectralFrameRefPos', NULL, 'Spectral frame origin', 'CoordSys.SpectralFrame.RefPos', 'spect.frame', 'char', '*', NULL, 'CoordSysSpectral', 'RefPos', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (16, NULL, 'SpectralFrameRedshift', NULL, 'Redshift value used if restframe corrected', 'CoordSys.SpectralFrame.Redshift', NULL, 'double', NULL, NULL, 'CoordSysSpectral', 'Redshift', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (17, NULL, 'RedshiftFrameID', NULL, 'ID string for redshift frame', 'CoordSys.RedshiftFrame.ID', 'meta.id', 'char', '*', NULL, 'CoordSysRedshift', 'Identifier', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (18, NULL, 'RedshiftFrameName', NULL, 'Redshift frame name', 'CoordSys.RedshiftFrame.Name', NULL, 'char', '*', NULL, 'CoordSysRedshift', 'Name', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (19, NULL, 'RedshiftFrameUCD', NULL, 'Redshift frame UCD', 'CoordSys.RedshiftFrame.UCD', 'meta.ucd', 'char', '*', NULL, 'CoordSysRedshift', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (20, NULL, 'RedshiftFrameRefPos', NULL, 'Redshift frame origin', 'CoordSys.RedshiftFrame.RefPos', NULL, 'char', '*', NULL, 'CoordSysRedshift', 'RefPos', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (21, NULL, 'DopplerDefinition', NULL, 'Type of redshift', 'CoordSys.RedshiftFrame.DopplerDefinition', NULL, 'double', NULL, NULL, 'CoordSysRedshift', 'Definition', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (22, NULL, 'FluxFrameID', NULL, 'ID string for flux frame', 'CoordSys.FluxFrame.ID', 'meta.id', 'char', '*', NULL, 'CoordSysFlux', 'Identifier', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (23, NULL, 'FluxFrameName', NULL, 'Name of photometric band', 'CoordSys.FluxFrame.Name', NULL, 'char', '*', NULL, 'CoordSysFlux', 'Name', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (24, NULL, 'FluxFrameUCD', NULL, 'UCD for photometric calibration', 'CoordSys.FluxFrame.UCD', 'meta.ucd', 'char', '*', NULL, 'CoordSysFlux', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (25, NULL, 'FluxFrameRefID', NULL, 'URI for photometric calibration', 'CoordSys.FluxFrame.refID', 'meta.ref.ivorn', 'char', '*', NULL, 'CoordSysFlux', 'RefID', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (26, NULL, 'AcReference', 'access_url', 'URL used to access dataset', 'Access.Reference', 'meta.ref.url', 'char', '*', NULL, 'DataSet', 'AcReference', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (27, NULL, 'Format', 'access_format', 'Content format or MIME type of dataset', 'Access.Format', 'meta.file', 'char', '*', NULL, 'Format', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (28, NULL, 'Size', 'access_estsize', 'Estimated dataset size', 'Access.Size', NULL, 'long', NULL, 'kilobytes', 'DataSet', 'Size', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (29, NULL, 'DataModel', NULL, 'Data model name and version', 'Dataset.DataModel.Name', NULL, 'char', '*', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (30, NULL, 'DataModelPrefix', NULL, 'Data model prefix', 'Dataset.DataModel.Prefix', NULL, 'char', '*', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (31, NULL, 'DataModelURL', NULL, 'Reference URL for data model', 'Dataset.DataModel.URL', 'meta.ref.url', 'char', '*', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (32, NULL, 'DatasetType', 'dataproduct_type', 'Data product (file content) primary type', 'Obs.dataProductType', NULL, 'char', '*', NULL, 'DataSetType', NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (33, NULL, 'DatasetSubtype', 'dataproduct_subtype', 'Data product specific type', 'Obs.dataProductSubtype', NULL, 'char', '*', NULL, 'DataSetSubType', NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (34, NULL, 'DatasetCalibLevel', 'calib_level', 'Calibration level', 'Dataset.CalibLevel ', 'meta.code.qual', 'long', NULL, NULL, 'CalibLevel', NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (35, NULL, 'DataLength', 'dataproduct_lenght', 'Number of pixels', 'Dataset.Length', 'meta.number', 'long', NULL, NULL, 'DataSet', NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (36, NULL, 'Nsubarrays', 'im_nsubarrays', 'Number of image subarrays', 'Dataset.Image.Nsubarrays', 'meta.number', 'long', NULL, NULL, 'DataSetImage', NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (37, NULL, 'Naxes', 'im_naxes', 'Number of image axes', 'Dataset.Image.Naxes', 'meta.number', 'long', NULL, NULL, 'DataSetImage', NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (38, NULL, 'Naxis', 'im_naxis', 'Length of each axis of each subarray', 'Dataset.Image.Naxis', 'meta.number', 'long', '*', NULL, 'DataSetImage', NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (39, NULL, 'WCSAxes', 'im_wcsaxes', 'WCS axis coordinate types', 'Dataset.Image.WCSAxes', NULL, 'char', '*', NULL, 'DataSetImage', NULL, NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (40, NULL, 'Title', 'obs_title', 'Brief description of dataset in free format', 'DataID.Title', 'meta.title;meta.dataset', 'char', '*', NULL, 'DataID', 'Title', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (41, NULL, 'Creator', 'obs_creator_name', 'Name of the creator of the data', 'DataID.Creator', 'meta.curation', 'char', '*', NULL, 'Creator', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (42, NULL, 'Collection', 'obs_collection', 'Name of the data collection', 'DataID.Collection', 'meta.id', 'char', '*', NULL, 'Collection', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (43, NULL, 'ObservationID', 'obs_id', 'Internal ID given by the service', 'DataID.ObservationID', 'meta.id', 'char', '*', NULL, 'DataID', 'ObservationID', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (44, NULL, 'DatasetID', NULL, 'IVOA Dataset ID', 'DataID.DatasetID', 'meta.id;meta.dataset', 'char', '*', NULL, 'DataID', 'DatasetID', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (45, NULL, 'CreatorDID', 'obs_creator_did', 'Creator''s ID for the dataset', 'DataID.CreatorDID', 'meta.id', 'char', '*', NULL, 'DataID', 'CreatorDID', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (46, NULL, 'CreatorDate', 'obs_creation_date', 'Data processing/creation date', 'DataID.Date', 'time.epoch;meta.dataset', 'char', '*', NULL, 'DataID', 'CreatorDate', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (47, NULL, 'CreatorVersion', NULL, 'Version of dataset', 'DataID.Version', 'meta.version;meta.dataset', 'char', '*', NULL, 'DataID', 'CreatorVersion', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (48, NULL, 'CreationType', NULL, 'Dataset creation type', 'DataID.CreationType', NULL, 'char', '*', NULL, 'Creation', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (49, NULL, 'CreatorLogo', NULL, 'URL for creator logo', 'DataID.Logo', 'meta.ref.url', 'char', '*', NULL, 'Creator', 'Logo', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (50, NULL, 'Instrument', 'instrument_name', 'Instrument name', 'Provenance.ObsConfig.Instrument.Name', 'meta.id;instr', 'char', '*', NULL, 'Instrument', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (51, NULL, 'Bandpass', NULL, 'Spectral bandpass name', 'Provenance.ObsConfig.Bandpass', 'instr.bandpass', 'char', '*', NULL, 'Bandpass', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (52, NULL, 'DataSource', NULL, 'Original source of the data', 'Provenance.ObsConfig.DataSource', NULL, 'char', '*', NULL, 'DataSource', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (53, NULL, 'Facility', 'facility_name', 'Facility name', 'Provenance.ObsConfig.Facility.Name', 'meta.id:instr.tel', 'char', '*', NULL, 'Facility', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (54, NULL, 'ProposalID', 'proposal_id', 'Proposal if any dataset is associated with', 'Provenance.Proposal.Identifier', 'obs.proposal', 'char', '*', NULL, 'Proposal', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (55, NULL, 'BeamMajorAxis', 'beam_maj', 'Major axis (FWHM) of beam (arcsec)', 'Provenance.Postprocessing.Bmaj', 'instr.beam', 'double', NULL, NULL, 'Provenance', 'BeamMajorAxis', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (56, NULL, 'BeamMinorAxis', 'beam_min', 'Minor axis (FWHM) of beam (arcsec)', 'Provenance.Postprocessing.Bmin', 'instr.beam', 'double', NULL, NULL, 'Provenance', 'BeamMinorAxis', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (57, NULL, 'BeamPositionAngle', 'beam_pa', 'Position angle of major axis of beam (N->E)', 'Provenance.Postprocessing.Bpa', 'instr.beam;instr.param', 'double', NULL, NULL, 'Provenance', 'BeamPositionAngle', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (58, NULL, 'Tapering', 'tapering', 'Taper type in cleaning process', 'Provenance.Postprocessing.Taper', 'instr.param', 'char', '*', NULL, 'Tapering', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (59, NULL, 'OverSampling', 'oversampling', 'Number of pixels considered as spatial resolution for CLEAN', 'Provenance.Postprocessing.Oversampling', 'instr.param', 'double', NULL, NULL, 'Provenance', 'Oversampling', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (60, NULL, 'Publisher', NULL, 'Dataset publisher', 'Curation.Publisher', 'meta.curation', 'char', '*', NULL, 'Publisher', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (61, NULL, 'PublisherID', 'publisher_id', 'URI for VO Publisher', 'Curation.PublisherID', 'meta.ref.url;meta.curation', 'char', '*', NULL, 'Publisher', 'PublisherID', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (62, NULL, 'PublisherDID', 'obs_publisher_did', 'Publisher''s ID for the dataset ID', 'Curation.PublisherDID', 'meta.ref.url;meta.curation', 'char', '*', NULL, 'Curation', 'PublisherDID', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (63, NULL, 'ReleaseDate', 'obs_release_date', 'Dataset release date', 'Curation.ReleaseDate', 'time.release', 'char', '*', NULL, 'Curation', 'PublisherDate', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (64, NULL, 'PublisherVersion', NULL, 'Publisher''s version of the dataset', 'Curation.Version', 'meta.version;meta.curation', 'char', '*', NULL, 'Curation', 'PublisherVersion', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (65, NULL, 'Rights', 'data_rights', 'Restrictions on data access', 'Curation.Rights', 'meta.code', 'char', '*', NULL, 'Right', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (66, NULL, 'Reference', 'bib_reference', 'URL or Bibcode for documentation', 'Curation.Reference', 'meta.bib.bibcode', 'char', '*', NULL, 'BibReference', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (67, NULL, 'ContactName', NULL, 'Contact name', 'Curation.Contact.Name', 'meta.bib.author;meta.curation', 'char', '*', NULL, 'Contact', 'ContactName', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (68, NULL, 'ContactEmail', NULL, 'Contact email', 'Curation.Contact.Email', 'meta.ref.url;meta.email', 'char', '*', NULL, 'Contact', 'ContactEmail', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (69, NULL, 'SpatialAxisName', NULL, 'Name for spatial axis', 'Char.SpatialAxis.Name', 'meta.id', 'char', '*', NULL, 'CharSpatialAxis', 'AxisName', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (70, NULL, 'SpatialAxisUCD', 's_ucd', 'UCD for spatial coord', 'Char.SpatialAxis.UCD', 'meta.ucd', 'char', '*', NULL, 'CharSpatialAxis', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (71, NULL, 'SpatialAxisUnit', 's_unit', 'Unit for spatial coord', 'Char.SpatialAxis.Unit', 'meta.unit', 'char', '*', NULL, 'CharSpatialAxis', 'Unit', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (72, NULL, 'SpatialAxisLocationRA', 's_ra', 'Spatial Position in RA', 'Char.SpatialAxis.Coverage.Location.Coord.Position2D.Value2.C1', 'pos.eq.ra', 'double', NULL, 'deg', 'CharSpatial', 'RA', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (73, NULL, 'SpatialAxisLocationDEC', 's_dec', 'Spatial Position in Dec', 'Char.SpatialAxis.Coverage.Location.Coord.Position2D.Value2.C2', 'pos.eq.dec', 'double', NULL, 'deg', 'CharSpatial', 'Dec', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (74, NULL, 'SpatialLocation', NULL, 'Spatial Position', 'Char.SpatialAxis.Coverage.Location.Coord', 'pos.eq', 'double', '2', 'deg', 'CharSpatial', 'Location', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (75, NULL, 'SpatialExtent', 's_fov', 'Diameter of field of view', 'Char.SpatialAxis.Coverage.Bounds.Extent.Diameter', 'pos.AngDistance;instr.fov', 'double', NULL, 'deg', 'CharSpatial', 'Extent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (76, NULL, 'SpatialLoLimit', NULL, 'Lower bounds of image spatial coordinates', 'Char.SpatialAxis.Coverage.Bounds.Limits.LoLimit2Vec', 'pos.eq;stat.min', 'double', '2', 'deg', 'CharSpatial', 'LocationLoLimit', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (77, NULL, 'SpatialHiLimit', NULL, 'Higher bounds of image spatial coordinates', 'Char.SpatialAxis.Coverage.Bounds.Limits.HiLimit2Vec', 'pos.eq;stat.max', 'double', '2', 'deg', 'CharSpatial', 'LocationHiLimit', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (78, NULL, 'SpatialArea', 's_region', 'Aperture region', 'Char.SpatialAxis.Coverage.Support.Area', 'phys.angSize;instr', 'char', '*', NULL, 'CharSpatial', 'Area', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (79, NULL, 'SpatialSupportExtent', NULL, 'Field of view area', 'Char.SpatialAxis.Coverage.Support.Extent', 'pos.AngDistance;instr.fov', 'double', NULL, 'sqdeg', 'CharSpatial', 'SupportExtent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (80, NULL, 'SpatialSampleExtent', NULL, 'Spatial bin size', 'Char.SpatialAxis.SamplingPrecision.SampleExtent', 'phys.angSize;instr.pixel', 'double', NULL, 'deg', 'CharSpatial', 'SampleExtent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (81, NULL, 'SpatialFillFactor', NULL, 'Spatial sampling filling factor', 'Char.SpatialAxis.SamplingPrecision.SamplingPrecisionRefval.FillFactor', 'stat.filling;pos', 'double', NULL, NULL, 'CharSpatial', 'FillFactor', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (82, NULL, 'SpatialStatError', 's_stat_error', 'Astrometric statistical error', 'Char.SpatialAxis.Accuracy.StatError.Refval.Value', 'stat.error;pos.eq', 'double', NULL, 'deg', 'CharSpatial', 'StatError', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (83, NULL, 'SpatialSysError', NULL, 'Astrometric systematic error', 'Char.SpatialAxis.Accuracy.SysError', 'stat.error.sys;pos.eq', 'double', NULL, 'deg', 'CharSpatial', 'SysError', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (84, NULL, 'SpatialCalibration', 's_calib_status', 'Type of spatial coord calibration', 'Char.SpatialAxis.CalibStatus', 'meta.code.qual', 'char', '*', NULL, 'CharSpatial', 'Calibration', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (85, NULL, 'SpatialResolution', 's_resolution', 'Spatial resolution of data', 'Char.SpatialAxis.Resolution.Refval', 'pos.angResolution', 'double', NULL, 'deg', 'CharSpatial', 'Resolution', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (86, NULL, 'SpatialResolutionMin', 's_resolution_min', 'Resolution min value on spatial axis (FHWM of PSF)', 'Char.SpatialAxis.Resolution.Bounds.Limits.Interval.LoLim', 'pos.angResolution;stat.min', 'double', NULL, 'deg', 'CharSpatial', 'ResolutionMin', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (87, NULL, 'SpatialResolutionMax', 's_resolution_max', 'Resolution max value on spatial axis (FHWM of PSF)', 'Char.SpatialAxis.Resolution.Bounds.Limits.Interval.HiLim', 'pos.angResolution;stat.max', 'double', NULL, 'deg', 'CharSpatial', 'ResolutionMax', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (88, NULL, 'SpectralAxisName', NULL, 'Name for spectral axis', 'Char.SpectralAxis.Name', 'meta.id', 'char', '*', NULL, 'CharSpectralAxis', 'AxisName', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (89, NULL, 'SpectralAxisUCD', 'em_ucd', 'UCD for spectral coord', 'Char.SpectralAxis.UCD', 'meta.ucd', 'char', '*', NULL, 'CharSpectralAxis', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (90, NULL, 'SpectralAxisUnit', 'em_unit', 'Unit for spectral coord', 'Char.SpectralAxis.Unit', 'meta.unit', 'char', '*', NULL, 'CharSpectralAxis', 'Unit', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (91, NULL, 'SpectralLocation', NULL, 'Spectral coord value', 'Char.SpectralAxis.Coverage.Location.Coord', 'em.wl;instr.bandpass', 'double', NULL, 'm', 'CharSpectral', 'Location', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (92, NULL, 'SpectralExtent', NULL, 'Width of spectrum', 'Char.SpectralAxis.Coverage.Bounds.Extent', 'em.wl;instr.bandwidth', 'double', NULL, 'm', 'CharSpectral', 'Extent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (93, NULL, 'SpectralStart', 'em_min', 'Start in spectral coordinate', 'Char.SpectralAxis.Coverage.Bounds.Limits.LoLimit', 'em.wl;stat.min', 'double', NULL, 'm', 'CharSpectral', 'Start', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (94, NULL, 'SpectralStop', 'em_max', 'Stop in spectral coordinate', 'Char.SpectralAxis.Coverage.Bounds.Limits.HiLimit', 'em.wl;stat.max', 'double', NULL, 'm', 'CharSpectral', 'Stop', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (95, NULL, 'SpectralSupportExtent', NULL, 'Effective width of spectrum', 'Char.SpectralAxis.Coverage.Support.Extent', 'em.wl;instr.bandwidth', 'double', NULL, 'm', 'CharSpectral', 'SupportExtent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (96, NULL, 'SpectralSampleExtent', NULL, 'Wavelength bin size', 'Char.SpectralAxis.SamplingPrecision.SampleExtent', 'em.wl;spect.binSize', 'double', NULL, 'm', 'CharSpectral', 'SampleExtent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (97, NULL, 'SpectralFillFactor', NULL, 'Spectral sampling filling factor', 'Char.SpectralAxis.SamplingPrecision.SamplingPrecisionRefVal.FillFactor', 'stat.filling;em', 'double', NULL, NULL, 'CharSpectral', 'FillFactor', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (98, NULL, 'SpectralBinSize', NULL, 'Spectral coord bin size', 'Char.SpectralAxis.Accuracy.BinSize', 'em.wl;spect.binSize', 'double', NULL, 'm', 'CharSpectral', 'BinSize', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (99, NULL, 'SpectralStatError', 'em_stat_error', 'Spectral coord statistical error', 'Char.SpectralAxis.Accuracy.StatError.Refval.Value', 'stat.error;em', 'double', NULL, 'm', 'CharSpectral', 'StatError', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (100, NULL, 'SpectralSysError', NULL, 'Spectral coord systematic error', 'Char.SpectralAxis.Accuracy.SysError', 'stat.error.sys;em', 'double', NULL, 'm', 'CharSpectral', 'SysError', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (101, NULL, 'SpectralCalibration', 'em_calib_status', 'Type of spectral coord calibration', 'Char.SpectralAxis.CalibStatus', 'meta.code.qual', 'char', '*', NULL, 'CharSpectral', 'Calibration', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (102, NULL, 'SpectralResolution', 'em_resolution', 'Spectral resolution FWHM', 'Char.SpectralAxis.Resolution.Refval.Value', 'spect.resolution;em.wl', 'double', NULL, 'm', 'CharSpectral', 'Resolution', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (103, NULL, 'SpectralResPower', 'em_respower', 'Spectral resolving power', 'Char.SpectralAxis.Resolution.ResolPower.Refval', 'spect.resolution', 'double', NULL, NULL, 'CharSpectral', 'ResPower', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (104, NULL, 'SpectralResPowerMin', 'em_respower_min', 'Resolving power min value on spectral axis', 'Char.SpectralAxis.Resolution.ResolPower.LoLim', 'spect.resolution;stat.min', 'double', NULL, NULL, 'CharSpectral', 'ResPowerMin', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (105, NULL, 'SpectralResPowerMax', 'em_respower_max', 'Resolving power max value on spectral axis', 'Char.SpectralAxis.Resolution.ResolPower.HiLim', 'spect.resolution;stat.max', 'double', NULL, NULL, 'CharSpectral', 'ResPowerMax', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (106, NULL, 'TimeAxisName', NULL, 'Name for time axis', 'Char.TimeAxis.Name', 'meta.id', 'char', '*', NULL, 'CharTimeAxis', 'AxisName', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (107, NULL, 'TimeAxisUCD', NULL, 'UCD for time', 'Char.TimeAxis.UCD', 'meta.ucd', 'char', '*', NULL, 'CharTimeAxis', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (108, NULL, 'TimeAxisUnit', NULL, 'Unit for time', 'Char.TimeAxis.Unit', 'meta.unit', 'char', '*', NULL, 'CharTimeAxis', 'Unit', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (109, NULL, 'TimeLocation', NULL, 'Midpoint of exposure on MJD scale', 'Char.TimeAxis.Coverage.Location.Coord', 'time.epoch;obs', 'double', NULL, 'd', 'CharTime', 'Location', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (110, NULL, 'TimeExtent', NULL, 'Total exposure time', 'Char.TimeAxis.Coverage.Bounds.Extent', 'time.duration;obs.exposure', 'double', NULL, 's', 'CharTime', 'Extent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (111, NULL, 'TimeStart', 't_min', 'Start time', 'Char.TimeAxis.Coverage.Bounds.Limits.Interval.StartTime', 'time.start;obs.exposure', 'double', NULL, 'd', 'CharTime', 'Start', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (112, NULL, 'TimeStop', 't_max', 'Stop time', 'Char.TimeAxis.Coverage.Bounds.Limits.Interval.StopTime', 'time.stop;obs.exposure', 'double', NULL, 'd', 'CharTime', 'Stop', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (113, NULL, 'TimeSupportExtent', 't_exptime', 'Effective exposure time', 'Char.TimeAxis.Coverage.Support.Extent', 'time.duration;obs.exposure', 'double', NULL, 's', 'CharTime', 'SupportExtent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (114, NULL, 'TimeSampleExtent', NULL, 'Time bin size', 'Char.TimeAxis.SamplingPrecision.SampleExtent', 'time.interval', 'double', NULL, 's', 'CharTime', 'SampleExtent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (115, NULL, 'TimeFillFactor', NULL, 'Time sampling filling factor', 'Char.TimeAxis.SamplingPrecision.SamplingPrecisionRefVal.FillFactor', 'stat.filling;time', 'double', NULL, NULL, 'CharTime', 'FillFactor', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (116, NULL, 'TimeBinSize', NULL, 'Time bin size', 'Char.TimeAxis.Accuracy.BinSize', 'time.interval', 'double', NULL, 's', 'CharTime', 'BinSize', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (117, NULL, 'TimeStatError', 't_star_error', 'Time coord statistical error', 'Char.TimeAxis.Accuracy.StatError.Refval.Value', 'stat.error;time', 'double', NULL, 's', 'CharTime', 'StatError', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (118, NULL, 'TimeSysError', NULL, 'Time coord systematic error', 'Char.TimeAxis.Accuracy.SysError', 'stat.error.sys;time', 'double', NULL, 's', 'CharTime', 'SysError', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (119, NULL, 'TimeCalibration', 't_calib_status', 'Type of coord calibration', 'Char.TimeAxis.CalibStatus', 'meta.code.qual', 'char', '*', NULL, 'CharTime', 'Calibration', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (120, NULL, 'TimeResolution', 't_resolution', 'Time resolution FWHM', 'Char.TimeAxis.Resolution.Refval', 'time.resolution', 'double', NULL, 's', 'CharTime', 'Resolution', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (121, NULL, 'FluxAxisName', NULL, 'Name for flux axis', 'Char.ObservableAxis.Name', 'meta.id', 'char', '*', NULL, 'CharFluxAxis', 'AxisName', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (122, NULL, 'FluxAxisUCD', 'o_ucd', 'UCD for flux', 'Char.ObservableAxis.UCD', 'meta.ucd', 'char', '*', NULL, 'CharFluxAxis', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (123, NULL, 'FluxAxisUnit', 'o_unit', 'Unit for flux', 'Char.ObservableAxis.Unit', 'meta.unit', 'char', '*', NULL, 'CharFluxAxis', 'Unit', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (124, NULL, 'FluxAverage', NULL, 'Flux average', 'Char.ObservableAxis.Location.Coord', 'phot.flux;stat.mean', 'double', NULL, 'Jy', 'CharFlux', 'Average', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (125, NULL, 'FluxMin', NULL, 'Flux min value', 'Char.ObservableAxis.Coverage.Bounds.Limits.LoLimit', 'phot.flux;stat.min', 'double', NULL, 'Jy', 'CharFlux', 'Min', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (126, NULL, 'FluxMax', NULL, 'Flux max value', 'Char.ObservableAxis.Coverage.Bounds.Limits.HiLimit', 'phot.flux;stat.max', 'double', NULL, 'Jy', 'CharFlux', 'Max', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (127, NULL, 'FluxSupportExtent', NULL, 'Flux dynamic range', 'Char.ObservableAxis.Coverage.Support.Extent', 'phot.flux', 'double', NULL, 'Jy', 'CharFlux', 'SupportExtent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (128, NULL, 'FluxStatError', 'o_stat_error', 'Flux statistical error', 'Char.ObservableAxis.Accuracy.Refval.Value', 'stat.error;phot.flux.density;em', 'double', NULL, 'Jy', 'CharFlux', 'StatError', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (129, NULL, 'FluxSysError', NULL, 'Flux systematic error', 'Char.ObservableAxis.Accuracy.SysError', 'stat.error.sys;phot.flux.density;em', 'double', NULL, 'Jy', 'CharFlux', 'SysError', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (130, NULL, 'FluxCalibration', 'o_calib_status', 'Type of flux calibration', 'Char.ObservableAxis.CalibStatus', 'meta.code.qual', 'char', '*', NULL, 'CharFlux', 'Calibration', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (131, NULL, 'PolAxisName', 'pol_name', 'Name for polarization axis', 'Char.PolarizationAxis.Name', 'meta.id', 'char', '*', NULL, 'CharPolarizationAxis', 'AxisName', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (132, NULL, 'PolAxisUCD', 'pol_ucd', 'UCD for polarization type', 'Char.PolarizationAxis.UCD', 'meta.ucd', 'char', '*', NULL, 'CharPolarizationAxis', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (133, NULL, 'PolAxisEnum', 'pol_states', 'List of polarization states present or NULL if not applicable', 'Char.PolarizationAxis.StateList', 'meta.code;phys.polarization', 'char', '*', NULL, 'Polarization', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (134, NULL, 'VelocityAxisName', NULL, 'Name for velocity axis', 'Char.VelocityAxis.Name', 'meta.id', 'char', '*', NULL, 'CharVelocityAxis', 'AxisName', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (135, NULL, 'VelocityAxisUCD', NULL, 'UCD for velocity', 'Char.VelocityAxis.UCD', 'meta.ucd', 'char', '*', NULL, 'CharVelocityAxis', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (136, NULL, 'VelocityAxisUnit', NULL, 'Unit for velocity', 'Char.VelocityAxis.Unit', 'meta.unit', 'char', '*', NULL, 'CharVelocityAxis', 'Unit', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (137, NULL, 'VelocityAxisLocation', NULL, 'Central velocity in datacube', 'Char.VelocityAxis.Location.Coord', 'phys.veloc.rotat', 'double', NULL, 'km/s', 'CharVelocity', 'Location', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (138, NULL, 'VelocityAxisSupportExtent', NULL, 'Velocity axis lenght', 'Char.VelocityAxis.Coverage.Support.Extent\rChar.VelocityAxis.Coverage.Sample.Extent', NULL, 'double', NULL, 'km/s', 'CharVelocity', 'SupportExtent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (139, NULL, 'VelocityAxisSampleExtent', NULL, 'Velocity line lenght', 'Char.VelocityAxis.Coverage.Sample.Extent', NULL, 'double', NULL, 'km/s', 'CharVelocity', 'SampleExtent', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (140, NULL, 'VelocityStart', NULL, 'Start value for measured velocity in line', 'Char.VelocityAxis.Coverage.Sample.Extent.Limits.LoLimit', 'phys.veloc.rotat', 'double', NULL, 'km/s', 'CharVelocity', 'Start', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (141, NULL, 'VelocityStop', NULL, 'Last value for measured velocity in line', 'Char.VelocityAxis.Coverage.Sample.Extent.Limits.HiLimit', 'phys.veloc.rotat', 'double', NULL, 'km/s', 'CharVelocity', 'Stop', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (142, NULL, 'VelocityResolution', NULL, 'Resolution in velocity axis', 'Char.VelocityAxis.Resolution.Refval', 'phys.veloc.rotat;spect.resolution', 'double', NULL, 'km/s', 'CharVelocity', 'Resolution', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (143, NULL, 'FluxLineAxisName', NULL, 'Name for Flux Line axis', 'Char.FluxLine.Name', 'meta.id', 'char', '*', NULL, 'CharFluxLineAxis', 'AxisName', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (144, NULL, 'FluxLineAxisUCD', NULL, 'UCD for Flux Line', 'Char.FluxLine.UCD', 'meta.ucd', 'char', '*', NULL, 'CharFluxLineAxis', 'UCD', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (145, NULL, 'FluxLineAxisUnit', NULL, 'Unit for Flux Line', 'Char.FluxLine.Unit', 'meta.unit', 'char', '*', NULL, 'CharFluxLineAxis', 'Unit', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (146, NULL, 'FluxLineAxisMax', NULL, 'Max value for flux measured for the line', 'Char.FluxLine.Coverage.Bounds.Limits.HiLimit', 'phot.flux', 'double', NULL, 'K', 'CharFluxLine', 'Intensity', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (147, NULL, 'LineName', NULL, 'Name of spectral line', 'Char.Line.Name', 'meta.id;spect.line', 'char', '*', NULL, 'Line', 'Name', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (148, NULL, 'LineRestFrequency', NULL, 'Line rest frequency (m)', 'Char.Line.RestFrequency', 'em.freq;spect.line', 'double', NULL, 'm', 'Line', 'RestFrequency', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (149, NULL, 'TargetName', 'target_name', 'Target name', 'Target.Name', 'meta.id;src', 'char', '*', NULL, 'Target', 'Name', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (150, NULL, 'TargetDescription', NULL, 'Target description', 'Target.Description', 'meta.note;src', 'char', '*', NULL, 'Target', 'Description', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (151, NULL, 'TargetClass', 'target_class', 'Object class of observed target', 'Target.Class', 'src.class', 'char', '*', NULL, 'TargetClass', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (152, NULL, 'SpectralClass', NULL, 'Object spectral class', 'Target.SpectralClass', 'src.spType', 'char', '*', NULL, 'TargetSpectralClass', 'Label', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (153, NULL, 'TargetRA', NULL, 'Target RA', 'Target.Pos.Value2.C1', 'pos.eq.ra', 'double', NULL, 'deg', 'Target', 'RA', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (154, NULL, 'TargetDEC', NULL, 'Target Dec', 'Target.Pos.Value2.C2', 'pos.eq.dec', 'double', NULL, 'deg', 'Target', 'Dec', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (155, NULL, 'TargetPos', 'target_pos', 'Target Location (RA and Dec)', 'Target.Pos', 'pos.eq;src', 'double', '2', 'deg', 'Target', 'Position', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (156, NULL, 'TargetRedshift', 'target_redshift', 'Measured redshift for target', 'Target.Redshift', 'src.redshift', 'long', NULL, NULL, 'Target', 'Redshift', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (157, NULL, 'TargetVelocity', 'target_vel', 'Measured velocity for target', 'Target.Velocity', 'phys.veloc', 'double', NULL, 'km/s', 'Target', 'Velocity', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (158, NULL, 'TargetDistance', 'target_distance', 'Derived distance for target', 'Target.Distance', 'pos.distance', 'double', NULL, 'Mpc', 'Target', 'Distance', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (159, NULL, 'TargetInclination', 'target_inclination', 'Derived inclination for target', 'Target.Inclination', 'src.orbital.inclination', 'double', NULL, 'deg', 'Target', 'Inclination', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (160, NULL, 'TargetPositionAngle', 'target_position_angle', 'Measured position angle for target', 'Target.PositionAngle', 'pos.posAng', 'double', NULL, 'deg', 'Target', 'PA', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (161, NULL, 'TargetDiameter', 'target_diam', 'Measured optical diameter for target', 'Target.Diameter', 'phys.diameter;phys.angSize', 'double', NULL, 'arcsec', 'Target', 'Diameter', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (162, NULL, 'TargetMorphoType', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetMorpho', 'Type', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (163, NULL, 'TargerMorphoTrc3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetMorpho', 'Trc3', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (164, NULL, 'TargetMorphoBar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetMorpho', 'Bar', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (165, NULL, 'TargetMorphoRing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetMorpho', 'Ring', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (166, NULL, 'TargetMorphoMultiple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetMorpho', 'Multiple', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (167, NULL, 'TargetMorphoCompact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetMorpho', 'Compactness', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (168, NULL, 'TargetFluxBtc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetFlux', 'Btc', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (169, NULL, 'TargetFluxMfir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetFlux', 'Mfir', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (170, NULL, 'TargetFluxLogd25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetFlux', 'Logd25', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (171, NULL, 'TargetFluxLin25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetFlux', 'Lin25', NULL, NULL, NULL);
INSERT INTO "ServiceResponse" ("ID", "Order", "LabelModel", "LabelColumn", "Description", "UType", "UCD", "DataType", "ArraySize", "Units", "TableName", "FieldName", "queryData", "getMetadata", "TAP") VALUES (172, NULL, 'TargetFluxLoglb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TargetFlux', 'Loglb', NULL, NULL, NULL);


--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 250
-- Name: ServiceResponse_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"ServiceResponse_ID_seq"', 1, false);


--
-- TOC entry 2284 (class 0 OID 131817)
-- Dependencies: 253
-- Data for Name: Tapering; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "Tapering" ("ID", "Label") VALUES (1, 'GAUSSIAN');


--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 252
-- Name: Tapering_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"Tapering_ID_seq"', 1, true);


--
-- TOC entry 2286 (class 0 OID 131840)
-- Dependencies: 257
-- Data for Name: TargetClass; Type: TABLE DATA; Schema: vodata_cubes; Owner: vodata_cubes
--

INSERT INTO "TargetClass" ("ID", "Label") VALUES (1, 'Galaxy');


--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 256
-- Name: TargetClass_ID_seq; Type: SEQUENCE SET; Schema: vodata_cubes; Owner: vodata_cubes
--

SELECT pg_catalog.setval('"TargetClass_ID_seq"', 1, true);


-- Completed on 2014-02-07 10:36:07 CET

--
-- PostgreSQL database dump complete
--

