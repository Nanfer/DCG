/*
Variables %1 - %10 are hardcoded:
 %1 - small empty line
 %2 - bullet (for item in list)
 %3 - highlight start
 %4 - highlight end
 %5 - warning color formated for using in structured text tag
 %6 - BLUFOR color attribute
 %7 - OPFOR color attribute
 %8 - Independent color attribute
 %9 - Civilian color attribute
 %10 - Unknown side color attribute

 <t %7>text</t>
 */
class SEN_hint
{
    displayName = "Dynamic Combat Generator"; // display name for main class doesn't work. appears as <Mission> in Field Manual
    class SEN_overview
    {
        arguments[] = {};
        displayName = "Información de la mision";
        description = "Dynamic Combat Generator usa pueblos, ciudades y capitales como base para su sistema.%1Al inicio de la mision, las fuerzas enemigas ocupan un numero de localizaciones; se fortifican y montan patrullas en base al tipo de asentamiento que sea.%1%1Una de las localizaciones ocupadas contiene un oficial enemigo con INTEL importante. El primer objetivo es tomar la citada INTEL.%1%1Desde aqui, DCG generara un numero de misiones en base a la informcion del oficial. Junto a las misiones principales hay misiones de civiles que pueden influir en la reputacion de las fuerzas BLUFOR con los locales.";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_tip
    {
        arguments[] = {};
        displayName = "Consejos";
        description = "%1%2Los medicos civiles, en el centro medico Dodge,pueden curar cumpletamente a los jugadores.%1%2Para mover una unidad IA, la unidad tiene que estar retenida con precinto.%1%2Las misiones con el icono "C" representan misiones civiles.%1%2Algunas misiones solo aparecen si el FOB Pirelli esta desplegado.%1%2El seguro del arma se pone automaticamente al estar en el MOB Dodge.";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_addon
    {
        arguments[] = {};
        displayName = "Addons necesarios";
        description = "%1%2ACE3 (depencency)%1%2ACRE2%1%2Task Force Arrowhead Radio%1%2RHS:USAF%1%2RHS:AFRF%1%2Leights OPFOR%1%2All Third Party Unitpacks (via \userconfig\dcg\sen_unitpools.sqf)";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_headlessClient
    {
        arguments[] = {};
        displayName = "Headless Client";
        description = "DCG features headless client support to alleviate server strain.%1%2The headless client must be connected at mission start.%1%2Only occupied location units and patrol units will spawn on the headless client.";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_parameters
    {
        arguments[] = {};
        displayName = "Mission Parameters";
        description = "Debug Mode%1%2Toggles debug/test mode. All debug messages are logged to a rpt file.%1Disable Third Person Camera%1%2Disables third person view for players. This parameter does not affect players in vehicles.%1Season%1%2Sets the mission weather based on the selected season and map.%1Time of Day%1%2Sets the mission time.%1Enemy Side%1%2Sets the enemy side.%1Enemy Patrols%1%2Toggles enemy patrols. Patrols consists of infantry and technical units that spawn around an occupied location. The number of patrols is dependent on map size.%1Armored Patrol Count%1%2Sets the amount of patrols that will be technicals.%1Occupied Location Count%1%2Sets the number of occupied locations.%1Occupied Location Enemy Count%1%2Sets the number of enemies to spawn in an occupied location.%1Roadside IEDs%1%2Toggles roadside IEDs. The amount of IEDs is dependent on map size.%1Visual Effects%1%2Toggles visual effects such as destroyed buildings and burning vehicles.%1Use Modified Content if Available%1%2Toggles the use of units and vehicles from addon content.%1AI Cache Distance%1%2The distance from a player at which mission AI will disable simulation.";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_occupation
    {
        arguments[] = {};
        displayName = "Occupation";
        description = "At the start of the mission enemy forces will occupy a number of local settlements.%1%1While in conflict in an occupied location, enemies may surrender once players start to seize control of the settlement.%1%1Once an occupied location is liberated, players will be informed and the corresponding map markers will update.%1%1If the enemy officer is in the occupied location, his general area will be marked once players have seized the location.%1%1The following may appear at an occupied location.%1%2Garrisoned enemies%1%2Enemy snipers in the surrounding hills%1%2Motorized patrols%1%2Air patrols%1%2Static emplacements%1%2Manned towers";
        tip = "An occupied location's defenses depend on the size of the settlement. So, it may not be in a player's best interest to attack an occupied capital without a sizable force.%1%1The opposition may send reinforcements once players have liberated a location.";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_armory
    {
        arguments[] = {};
        displayName = "Arsenal";
        description = "DCG uses Bohemia's Virtual Arsenal. Players can access Arsenal at the headquarters. %1%1There is a %3Take Radio%4 action at the Arsenal box that will quickly equip the player with ACRE2 or TFAR equipment (see Communications Network tab for more info).";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_civInteraction
    {
        arguments[] = {};
        displayName = "Civilian Interaction";
        description = "Your civilian approval determines what kind of interaction you will have with the local population.%1%1Completing civilian tasks (C) and liberating occupied locations will improve your standing with civilians and encourage them to provide players with valuable intel, while killing civilians will negatively affect your approval.%1%1Civilian approval can be influenced by the FOB system (see Logistics tab).";
        tip = "Players can check their civilian approval through the ACE interaction menu.";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_logistics
    {
        arguments[] = {};
        displayName = "Logistica";
        description = "Los jugadores tienen la opcion de construir un FOB lejos del MOB Dodge. El FOB Pirelli tiene transporte y capacidad de asistencia medica que se puede acceder a traves de la construccion de los edificios por los jugadores.%1%1Solo un jugador puede tener el control sobre la construccion del FOB, aunque todos los jugadores pueden solicitar el control del mismo a traves del menu de interaccion de ACE.%1%1El FOB Pirelli permite el teletransporte desde y hacia el MOB Dodge.%1%1El FOB Pirelli puede ser desmantelado a traves de un ordenador portatil en el HQ del MOB Dodge.%1%1Si hay un HQ desplegado en el FOB Pirelli%1%2El reconomiciento aereo ira periodicamente marcando enemigos que se encuentren a cierta distancia.%1%2La aprobacion civil se ve influida por el FOB Pirelli.%1%1Si hay una cobertura de vehiculo en el FOB Pirelli%1%2El FOB tendra capacidades vehiculares.%1%1Si hay un helipad posicionado en el FOB Pirelli%1%2IA BLUFOR reforzara el FOB.";
        tip = "If a player disconnects while in control of FOB Pirelli, the next player to request control will take over.%1The Enemy Patrol mission parameter must be on to allow aerial recon.%1Players periodically gain a bonus to civilian approval based on FOB Pirelli's readiness.";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_transportation
    {
        arguments[] = {};
        displayName = "Transporte";
        description = "Los jugadores pueden solicitar transporte aereo en cualquier momento durante la mision a traves del menu de interaccion de ACE.%1%1El solicitante (el jugador que haya iniciado la solicitud de transporte) debe seleccionar una posicion adecuada a traves del mapa. Una vez la posicion esta seleccionada, un transporte se movera a la posicion y esperara a que %3cualquier%4 jugador ocupe la posicion de copiloto.%1%1Seguido, el copiloto debe seleccionar una posicion adecuada y el transporte se movera al destino seleccionado.";
        tip = "Si el transporte es destruido, otro transporte estara disponible al paso de un rato.";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_comm
    {
        arguments[] = {};
        displayName = "Communications Network";
        description = "%3COMMAND%4 Net%1%2platoon commander%1%2alpha squad leader%1%2bravo squad leader%1%1%3SUPPORT%4 Net%1%2platoon sargent%1%2rhino team%1%2reaper team%1%1%3SQUAD%4 Net (squad specific)%1%2includes all units%1%1DCG features a default communications network that works alongside ACRE2 and TFAR to provide players with a logical communications structure.%1%1The system uses a Platoon level structure that features three basic nets, %3COMMAND%4, %3SUPPORT%4 and %3SQUAD%4.%1%1By default, the %3COMMAND%4 net is limited to the platoon commander and squad leaders. This channel is for high level comms and connects the various elements.%1%1The %3SUPPORT%4 net connects the auxiliary elements to the platoon element. The platoon sargent (also the Forward Air Controller) oversees this network.%1%1The %3SQUAD%4 net contains all squad/team level communications. It is a different channel for each squad. Most players will operate on this network.%1%1To clarify, any individual that has access to the %3COMMAND%4 and %3SUPPORT%4 networks will also have access to the appropriate %3SQUAD%4 net.";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
};
