var checkboxes = document.querySelectorAll('.calculator-checkbox');


if(checkboxes.length > 0) {
    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('click', () => {
            updateTotal();
        })
    });
}

const updateTotal = () => {
    var total = 0;
    document.querySelectorAll('.calculator-checkbox').forEach(checkbox => {
        if(checkbox.checked) total = total + parseInt(checkbox.value);
    });

    document.querySelector('.calculator-cost span').innerHTML = total;
}