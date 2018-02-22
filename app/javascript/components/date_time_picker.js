import "bootstrap";
import { datetimepicker} from "bootstrap-datepicker";

function dateTimePick(date_picker_name) {
  document.getElementById(date_picker_name).datetimepicker({
    autoclose: true,
    todayBtn: true,
    pickerPosition: "bottom-left",
    format: 'mm-dd-yyyy'
  });
  // $(date_picker_name).datetimepicker({
  //   autoclose: true,
  //   todayBtn: true,
  //   pickerPosition: "bottom-left",
  //   format: 'mm-dd-yyyy hh:ii'
}


export { dateTimePick }
