const { $, $$ } = require('@cucumber-e2e/po2');
const GoogleResults = require('./GoogleResults');
const WikiHome = require('./wikipedia/WikiHome');
const SyncfusionHome = require('./syncfusion/SyncfushionHome');
const DoctorsForm = require('./syncfusion/DoctorsForm');
const SelectionInDropdownList = require('./syncfusion/SelectionInDropdownList');
const FullDoctorsCard = require('./syncfusion/FullDoctorsCard');
const PatientsForm = require('./syncfusion/PatientsForm');
const PatientsTable = require('./syncfusion/PatientsTable')

class App {
    GoogleInput = $('input.gLFyf.gsfi');
    GoogleSearch = $('.FPdoLc.lJ9FBc input[name="btnK"]');
    GoogleResults = $$(new GoogleResults());
    WikiHome = $(new WikiHome());
    SyncfusionHome = $(new SyncfusionHome());
    DoctorsForm = $(new DoctorsForm());
    SelectionInDropdownList = $$(new SelectionInDropdownList());
    FullDoctorsCard = $(new FullDoctorsCard());
    PatientsForm = $(new PatientsForm());
    PatientsTable = $(new PatientsTable())
}

module.exports = new App();
