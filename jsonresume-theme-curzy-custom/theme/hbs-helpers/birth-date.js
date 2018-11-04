const moment = require('moment');
const { SafeString } = require('handlebars');

const birthDate = (birth) => {
  const out = [];
  if (birth && Object.keys(birth).length) {
    if (birth.place) {
      out.push(`<div> N&eacute; en ${birth.place}`);
    }
    if (birth.place && birth.state) {
      out.push(` (${birth.state})`);
    }
    const year = birth.date ? moment(birth.date.toString(), ['YYYY-MM-DD']).format('YYYY') : '';
    if (year && birth.place && birth.state) {
      out.push(` en ${year}</div>`);
    } else if (year && (!birth.place || birth.state)) {
      out.push(`<div> Né en ${year}</div>`);
    }
  }

  return new SafeString(out.join(''));
};

module.exports = { birthDate };
