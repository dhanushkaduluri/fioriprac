using { testprac.db.master } from '../db/datamodel';

service CatalogService @(path: 'catalogService' ){

    entity EmployeeSet as projection on master.employees;

    function CustomDelete() returns array of EmployeeSet;

}
