 namespace testprac.db;
 using { cuid, Currency } from '@sap/cds/common';
 using { dhanush.common } from './commons';
 
 context master {
    entity employees: cuid {
        @Consumption.valueHelpDefinition : [
            {entity:{ element : 'nameFirst',
                        name : 'nameFirst'
            }}
        ]
        nameFirst: String(40) ;
        nameMiddle: String(40) ;
        nameLast: String(40);
        nameInitials: String(40);
        sex: common.Gender;
        language: String(1);
        phoneNumber: common.PhoneNumber;
        email: common.Email;
        loginName: String(12);
        Currency: Currency;
        salaryAmount: common.AmountT;
        accountNumber: String(16);
        bankId: String(40);
        bankName: String(64);
    }
 }
 