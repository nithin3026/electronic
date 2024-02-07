sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'strores/test/integration/FirstJourney',
		'strores/test/integration/pages/StoreList',
		'strores/test/integration/pages/StoreObjectPage'
    ],
    function(JourneyRunner, opaJourney, StoreList, StoreObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('strores') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStoreList: StoreList,
					onTheStoreObjectPage: StoreObjectPage
                }
            },
            opaJourney.run
        );
    }
);