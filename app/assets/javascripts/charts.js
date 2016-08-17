var agePoints = {
  "18": 99,
  "19": 105,
  "20": 110,
  "21": 110,
  "22": 110,
  "23": 110,
  "24": 110,
  "25": 110,
  "26": 110,
  "27": 110,
  "28": 110,
  "29": 110,
  "30": 105,
  "31": 99,
  "32": 94,
  "33": 88,
  "34": 83,
  "35": 77,
  "36": 72,
  "37": 66,
  "38": 61,
  "39": 55,
  "40": 50,
  "41": 39,
  "42": 28,
  "43": 17,
  "44": 6
}

function calculateAge(dob) {
  var today = new Date();
  var dobDate = new Date(dob);
  var dobYear = dobDate.getFullYear();
  var age = today.getFullYear() - dobYear;
  return age;
}

function calculateAgePoints(dob){
  var age = calculateAge(dob);
  return agePoints[age];
}

$(function(){
  $("#candidate-1-spouse").on("click", function(){
    $("#second-applicant-form").toggleClass("second_applicant_does_not_exist");
  });
});

$(function () {
  var data = [];
  $('#container-for-chart').highcharts({
    chart: {
        type: 'pie',
        options3d: {
            enabled: true,
            alpha: 45
        }
    },
    title: {
        text: 'Assessment Points'
    },
    subtitle: {
        text: 'Overview for each requirement'
    },
    credits: {
      enabled: false
    },
    exporting: { 
      enabled: false 
    },
    plotOptions: {
        pie: {
            innerSize: 100,
            depth: 45
        }
    },
    series: [{
        name: 'Points',
        data: data   
    }]
    });
    // TODO: check how to deal with the DOB
    $('#dob').on('change', function() {
      // date is valid
      var dob = $(this).val();
      var age_points = calculateAgePoints(dob);
      // get points from dob
      var chart = $('#container-for-chart').highcharts();
      data.push(['Age', age_points]);
      chart.series[0].setData(data, true);

    });

    // MAIN APPLICANT
    $('#candidate-1-foreign-experience-one-or-two-check').one("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Foreign Experience', 50]);
        chart.series[0].setData(data,true);
    });
    $('#candidate-1-foreign-experience-three-or-more-check').one("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Foreign Experience', 50]);
        chart.series[0].setData(data,true);
    });
    $('#candidate-1-cdn-xp-years').one("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Canadian Experience', 35]);
        chart.series[0].setData(data,true);
    });
    $('#candidate-1-cdn-xp-ps-greater-than-one').one("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Canadian Experience', 35]);
        chart.series[0].setData(data,true);
    });

    // SECONDARY APPLICANT
    // $('#candidate-2-cdn-xp-ps-greater-than-one').one("click", function () {
    //     var chart = $('#container-for-chart').highcharts();
    //     data.push(['Canadian Experience', 35]);
    //     chart.series[0].setData(data,true);
    // });
});