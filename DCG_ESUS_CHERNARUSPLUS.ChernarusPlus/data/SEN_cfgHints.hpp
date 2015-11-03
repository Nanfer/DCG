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
        description = "DCG cuenta con apoyo de Headless Client para aligerar la carga del servidor.%1%2El headless client tiene que estar conectado al principio de la mision.%1%2Solo las unidades de patrullas y las que se encuentren en las zonas ocupadas apareceran con el headless client.";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_parameters
    {
        arguments[] = {};
        displayName = "Parametros de la mision";
        description = "Revisar parametros desde el Lobby cuando se esta loggeado como Administrador antes de lanzar la mision.";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_occupation
    {
        arguments[] = {};
        displayName = "Ocupacion";
        description = "Al principio de la mision las fuerzas enemigas ocuparan un numero de asentamientos.%1%1Durante el conflicto en una zona ocupada, el enemigo puede rendirse una vez el jugador comienza a atacar el asentamiento.%1%1Cuando un asentamiento ocupado es liberado, los jugadores seran informados y las correspondientes marcas seran actualizadas.%1%1Si el oficial enemigo esta en la zona ocupada, se marcara su posicion una vez la zona sea liberada.%1%1Los siguientes enemigos pueden aparecer en la zona ocupada.%1%2Enemigos atrincherados%1%2Francotiradores enemigos en las colinas circundantes%1%2Patrullas motorizadas%1%2Patrullas aereas%1%2Armas estaticas%1%2Torres de vigilancia";
        tip = "Las defensas de una posicion ocupada dependen del tamaño del asentamiento. Por lo que quizas no interesa a las fuerzas BLUFOR atacar capitales ocupadas sin las fuerzas necesarias.%1%1La oposicion puede enviar refuerzos una vez los BLUFOR han liberado un asentamiento.";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_armory
    {
        arguments[] = {};
        displayName = "Arsenal";
        description = "DCG usa el Arsenal Virtual de Bohemia. Los jugadores tienen acceso al Arsenal en el HQ. %1%1Hay una accion de %3Coger Radio%4 en la caja del Arsenal que equipara al jugador rapidamente con una radio compatible con ACRE2 o TFAR (mirar la pestaña de Mallas de Comunicaciones para mas informacion).";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
    class SEN_civInteraction
    {
        arguments[] = {};
        displayName = "Interaccion civil";
        description = "Vuestra aprobacion civil determina los tipos de interacciones que tendreis con la poblacion local.%1%1Completando misiones civiles (C) y liberando localizaciones ocupadas mejorareis vuestra reputacion con los civiles y fomentareis la colaboracion civil para que os provean de INTEL's, mientras que si se matan civiles, esto afectara negativamente vuestra reputacion.%1%1La aprobacion civil puede ser influida por el sistema del FOB (revisar pestaña de Logistica).";
        tip = "Los jugadores pueden revisar su aprovacion con los civiles a traves del menu de interaccion de ACE.";
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
        displayName = "Mallas de comunicaciones";
        description = "%3MALLADE MANDO%4 %1%2Comandante de peloton%1%2Lider de escuadra Alpha%1%2Lider de escuadra Bravo%1%1%3Malla de apoyo%4 %1%2Sargento de peloton%1%2Equipo Rhino%1%2Equipo Reaper%1%1%3Malla de escuadras%4 (especifico de escuadras)%1%2incluye todas las unidades%1%1DCG ofrece una red de comunicaciones predefinidaque funciona junto a ACRE2 y TFAR para proveer a los jugadores una estructura logica de comunicaciones.%1%1El sistema usa una estructura de Peloton que provee tres mallas basicas, %3MANDO%4, %3APOYO%4 y %3ESCUADRAS%4.%1%1Por defecto, la malla de %3MANDO%4 esta limitada al Comandante del peloton y a los lideres de escuadra. Este canal es para los mandos de alto rango y conecta varios elementos entre si.%1%1La malla de %3APOYO%4 conecta a los elementos auxiliares a los elementos del Peloton. El sargento de peloton (tambien el Controlador Aereo Avanzado) supervisa esta malla.%1%1La malla de %3ESCUADRAS%4 contiene todas las comunicaciones de escuadras y equipos. Es diferente para cada escuadra. La mayoria de jugadores operara en esta malla.%1%1Para aclarar, cualquier individuo que tenga acceso a las mallas de %3MANDO%4 y %3APOYO%4 tambien tendra acceso a la malla apropiada de %3ESCUADRA%4.";
        tip = "";
        image = "media\SEN_imgLogoSquare.paa";
        noImage = false;
    };
};
