using StoreDB as service from '../../srv/storesdb';

annotate service.Store with {
    statee @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'States',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : statee_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
        ],
    }
};
