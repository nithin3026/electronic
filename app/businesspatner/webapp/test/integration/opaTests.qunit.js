sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'businesspatner/test/integration/FirstJourney',
		'businesspatner/test/integration/pages/BuisinessPartnerList',
		'businesspatner/test/integration/pages/BuisinessPartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, BuisinessPartnerList, BuisinessPartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('businesspatner') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBuisinessPartnerList: BuisinessPartnerList,
					onTheBuisinessPartnerObjectPage: BuisinessPartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);