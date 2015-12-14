if (isServer) then {
    // Create Zeus Module
    if (isNil "cc_var_centreSideLogic_Zeus") then {
        cc_var_centreSideLogic_Zeus = createCenter sideLogic; publicVariable "cc_var_centreSideLogic_Zeus";
        cc_var_grupSideLogic_Zeus = createGroup cc_var_centreSideLogic_Zeus; publicVariable "cc_var_grupSideLogic_Zeus";
    };

    cc_var_moduleZeus = cc_var_grupSideLogic_Zeus createUnit ["ModuleCurator_F",[0,0,0] , [], 0, ""];
    cc_var_moduleZeus setVariable ["showNotification", false, true];
    cc_var_moduleZeus setVariable ["birdType", "", true];
    cc_var_moduleZeus setVariable ["Owner", "#adminLogged", true];
    cc_var_moduleZeus setVariable ["Addons", 3, true];
    cc_var_moduleZeus setVariable ["Forced", 0, true];
    publicVariable "cc_var_moduleZeus";    
};