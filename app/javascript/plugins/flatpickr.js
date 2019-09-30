//app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/airbnb.css" // A path to the theme CSS

flatpickr(".datepicker", {})


// app/javascript/plugins/flatpickr.js
// import flatpickr from "flatpickr"
// import "flatpickr/dist/flatpickr.min.css"
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

// flatpickr("datepicker", {
//   altInput: true,
//   enableTime: true
//   plugins: [new rangePlugin({ input: "#end_date"})]
// })
