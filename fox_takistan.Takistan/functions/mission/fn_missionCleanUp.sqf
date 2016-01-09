
_type  = server getVariable "missionType";


    switch (_type) do {
        
    case 'Chache': { 

	};
                    
    case 'CleanVillage': {

           				_trigger = server getVariable "mission_trigger";
    					deletevehicle _trigger;
    					kt = "mkay_" + floor(random(666));

	};
                    
                                                                                                                                                            
             
    default { hint "Mission Type not available" };
    
	};


/* Common stuff */

_id = server getVariable "missionId";
"markerMissionId_" + str(_id) setMarkerColor "ColorBlue";

systemChat "cleaned up";
publicVariable "server";
