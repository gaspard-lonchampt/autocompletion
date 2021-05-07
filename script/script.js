$(document).ready(function () {
  $("#search_bar").keyup(function (e) {

    $("#list_result").html('');

    var search = $("#search_bar").val();

    console.log($("#search_bar").html());

    $.ajax({
      type: "GET",
      url: "pages/list_result.php",
      data: "search=" + search,
      datatype: "text",
      success: function (result) {
        if (result == "") {
          $("#list_result").append("<p> No result </p> ");
        } else {
          $("#list_result").append(result);
          // $('#list_result').html().replaceAll(response);
        }
      },
    });
    console.log(result)
  });
});

$(document).ready(() => {
  $(document).on("click", "#search_icon", () => {
    // $("#result").attr("style", "display: none;");

    $("#search_result").empty();

    var search = $("#search_bar").val();

    $.ajax({
      type: "GET",
      url: "pages/search_result.php",
      data: "search=" + search,
      dataType: "text",
      success: function (response) {
        $("#search_result").append(response);
      },
    });
  });
});

$("#search_bar").keydown(function (e) {
  if (e.key == "Enter") {
    $("#search_icon").click();
  }
});