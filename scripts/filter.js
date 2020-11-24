function myFunction() {
  var input;
  var filter;
  var table;
  var tr;
  var td;
  var i;
  var txtValue;
  console.log("my function")

  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  for (i = 0; i < tr.length; i++) {
    td = tr[i].querySelector('.filter-by');
    console.log(td);
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

if(document.querySelector('#myInput')) {
  document.querySelector('#myInput').addEventListener('change', () => {
    console.log("Input changed");
  })
}

console.log("HIIIIIIIIII")