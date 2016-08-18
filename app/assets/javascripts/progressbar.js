$("#main-form input").keyup(function() {
  
  var numValid = 0;
  $("#main-form input[required]").each(function() {
    if (this.validity.valid) {
      numValid++;
    }
  });

  var progress = $("#progress");

  if (numValid == 0) {
    progress.attr("value", "0");
  }
  if (numValid == 1) {
    progress.attr("value", "20");
  }
  if (numValid == 2) {
    progress.attr("value", "40");
  }
  if (numValid == 3) {
    progress.attr("value", "60");
  }
  if (numValid == 4) {
    progress.attr("value", "80");
  }
  if (numValid == 5) {
    progress.attr("value", "95");
  }  
});