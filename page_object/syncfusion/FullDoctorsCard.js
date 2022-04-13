const { $, $$ } = require('@cucumber-e2e/po2');

class FullDoctorsCard{
  selector = '.doctor-details-container .active-doctor-info'

  NameField = $('.name');
  EducationField = $('.education');
  DepartmentField = $('.specialization');
  ExperienceField = $('.experience');
  PhoneField = $('.mobile');
  DesignationField = $('.designation');
  DutyTimingField = $('.available-days');
}

module.exports = FullDoctorsCard;