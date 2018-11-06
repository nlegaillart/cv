const moment = require('moment');

const dateHelpers = {
  MY: date => moment(date.toString(), ['YYYY-MM-DD']).locale("fr").format('MMMM YYYY'),
  Y: date => moment(date.toString(), ['YYYY-MM-DD']).locale("fr").format('YYYY'),
  DMY: date => moment(date.toString(), ['YYYY-MM-DD']).locale("fr").format('D MMMM YYYY')
};

module.exports = { dateHelpers };
