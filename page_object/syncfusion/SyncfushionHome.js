const { $, $$ } = require('@cucumber-e2e/po2');
const DoctorsCard = require('./DoctorsCard');

class SyncfusionHome {
  selector = '.planner-wrapper';

  DoctorsTab = $('//span[contains(text(), "Doctors")]');
  PatientsTab = $('[title="patients"]');
  AddDoctorButton = $('//button[contains(text(), "Add New Doctor")]');
  AddPatientButton = $('//button[contains(text(), "Add New Patient")]');
  DoctorsCards = $$(new DoctorsCard());
}

module.exports = SyncfusionHome;