var
  list,
  source,
  template,
  serviceType,
  alink,
  search,
  tt;

var params = {};

function init() {

  // get the list information via tabletop
  getList.tabletop();

  // // create Autolinker instance for use in filtering
  // // plain text URLs and Emails in the Handlebars helper
  // alink = new Autolinker( {
  //   className: "myLink"
  // } );

  // use this if using get.py
  // getList.local();
}


/*Get Params in URL*/
function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&").toLowerCase(); // This is just to avoid case sensitiveness for query parameter name
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

params.spreadsheetKey = 'https://docs.google.com/spreadsheet/pub?hl=en_US&hl=en_US&key=1zcf8HFaI2WesW-NkawO0g6pSrg4B8R5uH1l8oMI0K-I&output=html';
params.pageTitle = 'D-PAV';
params.primaryColor = getParameterByName('primary-color');
params.secondaryColor = getParameterByName('secondary-color');


// var public_spreadsheet_url = 'https://docs.google.com/spreadsheet/pub?hl=en_US&hl=en_US&key=1zcf8HFaI2WesW-NkawO0g6pSrg4B8R5uH1l8oMI0K-I&output=html';


//offline  https://docs.google.com/spreadsheet/pub?hl=en_US&hl=en_US&key=1zcf8HFaI2WesW-NkawO0g6pSrg4B8R5uH1l8oMI0K-I&output=html
//nope  https://docs.google.com/spreadsheets/d/e/2PACX-1vQvAv7rSCuqp5p5NiVDilJp7_y8w8BGh01b2iXDoqRtiyEffSxYN0BVyWpyktnZ_7BbKkBvT6_hL_Yp/pubhtml
//nope https://docs.google.com/spreadsheets/d/1zcf8HFaI2WesW-NkawO0g6pSrg4B8R5uH1l8oMI0K-I/edit?usp=sharing

var getList = {
  tabletop: function() {
    Tabletop.init({
      key: params.spreadsheetKey, // copy of live spreadsheet
      callback: success
    });
  },
  local: function() {
    $.ajax({
      url: '../list.json',
      dataType: 'json',
      success: success,
      error: function(err) {
        console.error(err);
      }
    });
  }
};

/*
callback function after the list data has
been returned successfully. Add it to `list`
so we have access to the information globally */
function success(data, tabletop) {

  tt = tabletop;

  // remove loader
  document.getElementById('loader').className = 'loaded';

  $('.sidebar .title').text(params.pageTitle);
  $('title').text(params.pageTitle);
  // assign data to list for global access
  list = data;

  // begin looping through the list data
  listLoop();
}

function initSearch() {

  // set up search fields, based on classes in the static/templates/service.handlebars template
  var options = {
    valueNames: [ 'title' ],
    page: 1000
  };

  // generate the searchable list object, send to search for global access
  search = new List('service-list-wrapper', options);
}

function initAutocomplete() {
  var serviceNames = [];
  $(".title h1").each(function() {serviceNames.push($(this).text())});

  var serviceNamesBloodhound = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    local: $.map(serviceNames, function(serviceName) { return { value: serviceName }; })
  });

  serviceNamesBloodhound.initialize();

  $('#search .typeahead').typeahead({
    hint: true,
    highlight: true,
    minLength: 1
  },
  {
    name: 'serviceNamesBloodhound',
    displayKey: 'value',
    source: serviceNamesBloodhound.ttAdapter()
  });
}

function listLoop() {

  // hide the services list initially so we can fade in
  $('#services-list').hide();

  // set the 'all' filter up first before the loop
  firstFilter();

  // loop throught the different sheets
  var sheetKey = 0;
  for (var key in list) {
    // let's run this IIFE function to keep our
    // for loop scope while we go through it
    // 'sheet' is the spreadsheet's tabulated sheet and represents list[key]
    (function(sheet) {

      // name of the service, originally from the sheet name
      serviceType = key.toString();

      // create a filter button for each serviceType
      createFilter(serviceType, sanitize(serviceType));

      // now lets get each row as "service" in k
      for (var s = 0; s < sheet.elements.length; s++) {
        // Create an individual key for each service item based on sheetKey-itemNumber
        itemId = sheetKey + '-' + s;
        (function(row){
          handleService(row, itemId);
        })(sheet.elements[s]);
      }

    })(list[key]);

    sheetKey++;
  }

  // fade in the populated list
  $('#services-list').fadeIn(600);

  // initialize the searchable list now that it has content
  initSearch();
  initAutocomplete();
}


function handleService(service, counter) {

  // remove the row that says "other"
  if (service.NAME === 'OTHER') {
    return;
  } else {

    var serviceElem = document.createElement('li');
    var serviceHeader = document.createElement('div');
    var requiredInfo = document.createElement('div');
    var additionalInfo = document.createElement('div');
    var showMoreButton = '<a data-toggle="collapse" class="btn btn-default more-info more-info-fix collapsed" data-target="#additional-services-' + counter + '"> </a>'

    serviceElem.className = 'service ' + sanitize(serviceType);
    serviceHeader.className = 'title col-md-6';
    requiredInfo.className = 'requiredInfo clearfix';
    additionalInfo.className = 'additionalInfo collapse clearfix';
    additionalInfo.id = 'additional-services-' + counter;

    $(serviceElem).append(requiredInfo);
    $(serviceElem).append(additionalInfo);

    requiredInfoButtons = document.createElement('div');
    requiredInfoButtons.className = 'btn-group pull-right';

    if(service['Status']){
      requiredInfoButtons.innerHTML += '<a href="#" class="btn btn-success"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Ativo</a>';
    } else {
      requiredInfoButtons.innerHTML += '<a href="#" class="btn btn-default disabled"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Inativo</a>';
    }

    if(service['URL']){
      requiredInfoButtons.innerHTML += '<a href="' + (service['URL']) + '" target="_blank" class="btn btn-default"><span class="glyphicon glyphicon-link" aria-hidden="true"></span> WWW</a>';
    } else {
      requiredInfoButtons.innerHTML += '<a href="#" class="btn btn-default disabled"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Sem URL</a>';
    }

    requiredInfoButtons.innerHTML += showMoreButton;

    serviceHeader.innerHTML = '<h1>' + service['Name'] + '</h1>';
    serviceHeader.innerHTML += '<p class="type">' + service['Type'] + '</p>';
    serviceHeader.innerHTML += '<p class="text-uppercase"><small>' + service['Tag1'] +'</small>    <small>' + service['Tag2'] +'</small>   <small>' + service['Tag3'] +'</small>   <small>' + service['Tag4'] +'</small>   <small>' + service['Tag5'] +'</small></p><br>';
    $(requiredInfo).append(serviceHeader);
    $(requiredInfo).append(requiredInfoButtons);

//    for (key in service) {

        if(service['Name']) {
        additionalInfo.innerHTML += '<div class="name col-md-12 hidden-xs hidden-sm hidden-md hidden-lg"><strong>NAME</strong><p>' + service['Name'] + '</p></div>';
    }

        if(service['Type']) {
        additionalInfo.innerHTML += '<div class="name col-md-12 hidden-xs hidden-sm hidden-md hidden-lg"><strong>TYPE</strong><p>' + service['Type'] + '</p></div>';
    }

        if(service['Tag1']) {
        additionalInfo.innerHTML += '<div class="name col-md-12 hidden-xs hidden-sm hidden-md hidden-lg"><strong>TAGS</strong><p>' + service['Tag1'] + '</p></div>';
    }

        if(service['Tag2']) {
        additionalInfo.innerHTML += '<div class="name col-md-12 hidden-xs hidden-sm hidden-md hidden-lg"><strong>TAGS</strong><p>' + service['Tag2'] + '</p></div>';
    }

        if(service['Tag3']) {
        additionalInfo.innerHTML += '<div class="name col-md-12 hidden-xs hidden-sm hidden-md hidden-lg"><strong>TAGS</strong><p>' + service['Tag3'] + '</p></div>';
    }

        if(service['Tag4']) {
        additionalInfo.innerHTML += '<div class="name col-md-12 hidden-xs hidden-sm hidden-md hidden-lg"><strong>TAGS</strong><p>' + service['Tag4'] + '</p></div>';
    }

        if(service['Tag5']) {
        additionalInfo.innerHTML += '<div class="name col-md-12 hidden-xs hidden-sm hidden-md hidden-lg"><strong>TAGS</strong><p>' + service['Tag5'] + '</p></div>';
    }

        if(service['Description']) {
        additionalInfo.innerHTML += '<div class="name col-md-12"><strong>DESCRIPTION</strong><p>' + service['Description'] + '</p></div>';
    }

        if(service['Image']) {
        additionalInfo.innerHTML += '<div class="name col-md-12"><strong></strong><p><img src="' + (service['Image']) + '" class="image_service img-responsive"></p></div>';
    }

        if(service['URL']) {
        additionalInfo.innerHTML += '<div class="name col-xs-12 col-md-6"><strong>URL</strong><p><a href="' + (service['URL']) + '" target="_blank" class="">' + service['URL'] + '</a></p></div>';
    }

        if(service['Status']) {
        additionalInfo.innerHTML += '<div class="name col-xs-6 hidden-xs hidden-sm hidden-md hidden-lg"><strong>STATUS</strong><p>' + service['Status'] + '</p></div>';
    }

        if(service['OS']) {
        additionalInfo.innerHTML += '<div class="name col-xs-6"><strong>OPERATING SYSTEM</strong><p>' + service['OS'] + '</p></div>';
    }

        if(service['Latest release']) {
        additionalInfo.innerHTML += '<div class="name col-xs-6"><strong>LATEST RELEASE</strong><p>' + service['Latest release'] + '</p></div>';
    }




//      if (service[key].length > 0 && key != 'Organization Name' && service[key] != 'N/A' && service[key] != 'N/a') {
//        additionalInfo.innerHTML += '<p class="'+key+' col-md-12"><strong>' + key + '</strong><br>' + service[key] + '</p>';
//      }

//    }


    document.getElementById('services-list').appendChild(serviceElem);
  }
}

function firstFilter() {
  var servicesFilterList = document.getElementById('services-filter');
  var all = document.createElement('button');
  all.innerHTML = 'Todas';
  all.className = 'service-filter btn active';
  all.setAttribute('data', 'all');
  all.setAttribute('type', 'button');
  all.addEventListener('click', filterClick, false);
  servicesFilterList.appendChild(all);
}

function createFilter(type, sanitized) {
  var servicesFilterList = document.getElementById('services-filter');
  var filter = document.createElement('button');
  filter.innerHTML = type;
  filter.className = 'btn service-filter';
  filter.setAttribute('data', sanitized);
  filter.setAttribute('type', 'button');
  filter.addEventListener('click', filterClick, false);
  servicesFilterList.appendChild(filter);
}

function sanitize(string) {
  var s = string.replace(/[^A-Z0-9]/ig, "-");
  s = s.toLowerCase();
  return s;
}

function filterClick() {

  // using jQuery here for simplicity
  if(!$(this).hasClass('active')) {
    var show = $(this).attr('data');
    $('.service-filter').removeClass('active');
    $(this).addClass('active');
    if(show=='all') {
      $('.service').show();
    } else {
      $('.service').hide();
      $('.'+show).show();
    }
  }

}

$(document).ready(function(){
  init();
});
