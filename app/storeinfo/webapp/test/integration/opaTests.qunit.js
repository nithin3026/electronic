sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'storeinfo/test/integration/FirstJourney',
		'storeinfo/test/integration/pages/StoreList',
		'storeinfo/test/integration/pages/StoreObjectPage'
    ],
    function(JourneyRunner, opaJourney, StoreList, StoreObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('storeinfo') + '/index.html'
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