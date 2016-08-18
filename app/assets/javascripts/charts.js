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
  $("#candidate-1-spouse").one("click", function(){
    $("#second-applicant-form").toggleClass("second_applicant_does_not_exist");
  });
});

$(function () {
  var data = [];
  Highcharts.getOptions().colors = Highcharts.map(Highcharts.getOptions().colors, function (color) {
    return {
      radialGradient: {
        cx: 0.5,
        cy: 0.3,
        r: 0.7
      },
      stops: [
        [0, color],
        [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
      ]
    };
  });
   $('#container-for-chart').highcharts({
      chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
      },
      title: {
        text: 'Assessment Points'
      },
      tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      },
      credits: {
        enabled: false
      },
      exporting: { 
        enabled: false 
      },
      plotOptions: {
        pie: {
          allowPointSelect: true,
          cursor: 'pointer',
          dataLabels: {
            enabled: true,
            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
            style: {
              color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
            },
            connectorColor: 'silver'
          }
        }
      },
      series: [{
          type: 'pie',
          innerSize: '50%',
          data: data
      }]

    });
    // TODO: check how to deal with the DOB
    $('#candidate_dob_1i').on('change', function() {
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
        data.push(['Canadian Experience', 25]);
        chart.series[0].setData(data,true);
    });
    $('#candidate-1-edu-level').on("change", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Education', 45]);
        chart.series[0].setData(data,true);
    });
    $('#candidate-1-cdn-xp-work-permit-paid').on("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Canadian experience', 55]);
        chart.series[0].setData(data,true);
    });
    $('#candidate-1-cdn-xp-work-perm-dli').on("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Canadian experience', 50]);
        chart.series[0].setData(data,true);
    });
    // make sure the div in _lang_test_multi_dropdown.html.erb has a class='lang_results'
    // though not sure it will work
    $('.lang_results').on("change", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Language', 5]);
        chart.series[0].setData(data,true);
    });
});