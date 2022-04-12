const { $, $$ } = require('@cucumber-e2e/po2');

class DoctorsCard{
  selector = '.e-cards.specialist-item';

  NameField = $('.name');
}

module.exports = DoctorsCard;