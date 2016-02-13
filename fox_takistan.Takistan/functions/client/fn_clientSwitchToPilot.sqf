_unit = _this select 0;
_player = _this select 1;

_u = call compile format ['%1',_unit];

if(alive _u)then{

  if(isPlayer _u)then{

    hint "Slot besetzt";

  }else{

    _player disableAI "MOVE";
    _player setCaptive  true;

    _u setVariable ["fox_pilot_org_player", _player, true];

    selectPlayer _u;


    _u addAction ["Zu Spieler", {[player] call fox_fnc_clientSwitchReturn ; (_this select 0) removeAction (_this select 2) }];
    _u addEventHandler ["Killed",{[player] call fox_fnc_clientSwitchReturn ;}]
  };

  }else{

    hint "Pilot ist tot";

};
