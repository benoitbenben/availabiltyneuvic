
//toast UI
import Calendar from 'tui-calendar'; /* ES6 */
import "tui-calendar/dist/tui-calendar.css";
// If you use the default popups, use this.
import 'tui-date-picker/dist/tui-date-picker.css';
import 'tui-time-picker/dist/tui-time-picker.css';

var calendar = new tui.Calendar(document.getElementById('calendar'), {
    defaultView: 'week',
    taskView: true,    // Can be also ['milestone', 'task']
    scheduleView: true,  // Can be also ['allday', 'time']
    template: {
        milestone: function(schedule) {
            return '<span style="color:red;"><i class="fa fa-flag"></i> ' + schedule.title + '</span>';
        },
        milestoneTitle: function() {
            return 'Milestone';
        },
        task: function(schedule) {
            return '&nbsp;&nbsp;#' + schedule.title;
        },
        taskTitle: function() {
            return '<label><input type="checkbox" />Task</label>';
        },
        allday: function(schedule) {
            return schedule.title + ' <i class="fa fa-refresh"></i>';
        },
        alldayTitle: function() {
            return 'All Day';
        },
        time: function(schedule) {
            return schedule.title + ' <i class="fa fa-refresh"></i>' + schedule.start;
        }
    },
    month: {
        daynames: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
        startDayOfWeek: 0,
        narrowWeekend: true
    },
    week: {
        daynames: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
        startDayOfWeek: 0,
        narrowWeekend: true
    }
});

// var Calendar = require('tui-calendar'); /* CommonJS */
// require("tui-calendar/dist/tui-calendar.css");

// // If you use the default popups, use this.
// require("tui-date-picker/dist/tui-date-picker.css");
// require("tui-time-picker/dist/tui-time-picker.css");

// var MONTHLY_CUSTOM_THEME = {
//     // month header 'dayname'
//     'month.dayname.height': '42px',
//     'month.dayname.borderLeft': 'none',
//     'month.dayname.paddingLeft': '8px',
//     'month.dayname.paddingRight': '0',
//     'month.dayname.fontSize': '13px',
//     'month.dayname.backgroundColor': 'inherit',
//     'month.dayname.fontWeight': 'normal',
//     'month.dayname.textAlign': 'left',

//     // month day grid cell 'day'
//     'month.holidayExceptThisMonth.color': '#f3acac',
//     'month.dayExceptThisMonth.color': '#bbb',
//     'month.weekend.backgroundColor': '#fafafa',
//     'month.day.fontSize': '16px',

//     // month schedule style
//     'month.schedule.borderRadius': '5px',
//     'month.schedule.height': '18px',
//     'month.schedule.marginTop': '2px',
//     'month.schedule.marginLeft': '10px',
//     'month.schedule.marginRight': '10px',

//     // month more view
//     'month.moreView.boxShadow': 'none',
//     'month.moreView.paddingBottom': '0',
//     'month.moreView.border': '1px solid #9a935a',
//     'month.moreView.backgroundColor': '#f9f3c6',
//     'month.moreViewTitle.height': '28px',
//     'month.moreViewTitle.marginBottom': '0',
//     'month.moreViewTitle.backgroundColor': '#f4f4f4',
//     'month.moreViewTitle.borderBottom': '1px solid #ddd',
//     'month.moreViewTitle.padding': '0 10px',
//     'month.moreViewList.padding': '10px'
//   };

//   var cal = new tui.Calendar('#calendar', {
//     defaultView: 'month',
//     theme: MONTHLY_CUSTOM_THEME // set theme
//   });

//   // or
//   // cal.setTheme(MONTHLY_CUSTOM_THEME);
