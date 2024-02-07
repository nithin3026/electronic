using StoreDB as service from '../../srv/storesdb';

annotate service.Store with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : store_id,
        },
        {
            $Type : 'UI.DataField',
            Value : namee,
        },
        {
            $Type : 'UI.DataField',
            Value : addres_1,
        },
        {
            $Type : 'UI.DataField',
            Value : addres_2,
        },
        {
            $Type : 'UI.DataField',
            Value : citi,
        },
    ]
);
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
annotate service.Store with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : store_id,
            },
            {
                $Type : 'UI.DataField',
                Value : namee,
            },
            {
                $Type : 'UI.DataField',
                Value : addres_1,
            },
            {
                $Type : 'UI.DataField',
                Value : addres_2,
            },
            {
                $Type : 'UI.DataField',
                Value : citi,
            },
            {
                $Type : 'UI.DataField',
                Value : pinc,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
