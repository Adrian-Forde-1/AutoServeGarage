if(document.querySelector('#myInput')) {
    document.querySelector('#myInput').addEventListener('keyup', (e) => {
        var filter = e.target.value.toString().toUpperCase();
        var table = document.querySelector('#myTable');
        var rows = table.querySelectorAll('tr');

        rows.forEach(row => {
            if(row.querySelector('.filter-by')) {
                var rowValue = row.querySelector('.filter-by').innerHTML.toString().toUpperCase();
                if(rowValue.indexOf(filter) > -1) {
                    row.style.display = "";
                }
                else row.style.display = "none";
            }
        })
    });
}