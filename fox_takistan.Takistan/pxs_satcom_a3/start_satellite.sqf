onMapSingleClick
{
	PXS_SatelliteTarget = "Logic" createVehicleLocal _pos;//PXS_SATCOM_Logic
	PXS_SatelliteTarget setDir 0;
	call PXS_viewSatellite;
};
hint "Click on the map to insert default satellite coordinates.";
openMap true;