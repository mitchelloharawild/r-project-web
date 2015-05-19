var platform = window.navigator.platform;
if (/Windows/.test(platform))
  $("#win").addClass("selected");
if (/Mac/.test(platform))
  $("#mac").addClass("selected");
if (/Linux/.test(platform))
  $("#lin").addClass("selected");

var cran = new RegExp("^http://cran.r-project.org/");
$("#rtable a").each(function(i, x) {
  if (x.href.match(cran))
    x.dataset.path = x.href.replace(cran, "");
});

// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/storage/localstorage.js
function has_storage() {
  var mod = 'modernizr';
  try {
    localStorage.setItem(mod, mod);
    localStorage.removeItem(mod);
    return true;
  } catch (e) {
    return false;
  }
}

function change_mirror() {
  $("#rtable a").each(function(i, x) {
    x.href = mirror.val() + x.dataset.path;
  });
}

var mirror;
$.getJSON("mirrors.json", function(data) {
  var items = $.map(data, function(key, val){
    return "<option value='" + key + "'>" + val + "</option>";
  });
  
  $("#rtable").
    after("<p class='form-inline'>CRAN mirror: <select id='mirror' class='input-sm form-control' name='mirror'>" + items.join("") + "</select></p>");
  
  mirror = $("#mirror").
    change(function() {
      change_mirror();
      if (has_storage())
        localStorage.mirror = mirror.val();
    });
  if (has_storage() && localStorage.mirror !== undefined)
    mirror.val(localStorage.mirror);
  change_mirror();
});
