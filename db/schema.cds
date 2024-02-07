namespace com.satinfotech.nnrg;

using { managed, cuid } from '@sap/cds/common';

/*@assert.unique:{
    studentid:[studentid]
}*/
entity BuisinessPartner: cuid, managed {

    @title: 'Business Partner Number'
    bp_number: String(5);

    @title: ' Name'
    name: String(40) ;

    @title: 'Address 1'
    address_1: String(40);

    @title: 'Adress 2'
   address_2: String(100) ;

    @title: 'City'
    city: String(20) ;

    @title: 'State'
    state: Association to States;

     @title: 'PIN Code'
     pincode: String(10);

    @title:'Is_GSTN_Registered'
    is_gstn_registered: Boolean default false;

    @title:'GSTIN Number'
    is_gstin_number: String(15) @mandatory;

   @title:'IS Vendor'
    is_vendor: Boolean default false;

    @title:'IS Customer'
    is_customer: Boolean default false;
   
}

entity Store :cuid, managed{
    @title:'StoreID'
    store_id: String(5);

    @title: 'Name'
    namee: String(30);

    @title:'Address1'
    addres_1: String(30);

    @title:'Address2'
    addres_2: String(30);

    @title:'City'
    citi: String(20);

    @title:'State'
    statee: Association to States;

    @title:'PINCODE'
    pinc:String(10);

}
entity Product :cuid, managed{
    @title:'ProductID'
    product_id: String(5);

    @title: 'Name'
    pname: String(30);

    @title:'Address1'
    addres_1: String(30);

    @title:'Address2'
    addres_2: String(30);

    @title:'City'
    citi: String(20);

    @title:'State'
    statee: Association to States;
    
    @title:'PINCODE'
    pinc:String(10);

}

entity States : cuid, managed {
    @title: 'Code'
    code: String(3);
    @title: 'Description'
    description: String(50);
}