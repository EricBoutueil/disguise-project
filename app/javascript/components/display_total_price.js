    // Je definis la fonction display :

        // Faire un js pour total booking price
        // Vérifier si le formulaire est bien affiché (let start date .getelementbyid / .val du formulaire) / Price = 0
// const start_date_day = document.getElementById("booking_start_date_3i");
// const start_date_month = document.getElementById("booking_start_date_2i");
// const end_date_day = document.getElementById("booking_end_date_3i");
// const end_date_month = document.getElementById("booking_end_date_2i");
// const total_price_element = document.getElementById("total_price");

// const price_per_day = Number(document.getElementById("price_per_day").dataset.price);

// function totalPrice(price_per_day, start_date, end_date) {
//   return price_per_day * (end_date - start_date) // !!!!!!!! en MILLISECONDS
// }

// function dhm(t){
//     var cd = 24 * 60 * 60 * 1000,
//         ch = 60 * 60 * 1000,
//         d = totalPrice(t / cd),
//         h = totalPrice( (t - d * cd) / ch),
//         m = totalPrice( (t - d * cd - h * ch) / 60000),
//         pad = function(n){ return n < 10 ? '0' + n : n; };
//   if( m === 60 ){
//     h++;
//     m = 0;
//   }
//   if( h === 24 ){
//     d++;
//     h = 0;
//   }
//   return [d];
// }

// console.log( dhm( 3 * 24 * 60 * 60 * 1000 ) );


// function date(day_element, month_elment) {
//   return new Date(2018, month_element.value - 1, day_element.value)
// }

// function onDateChange() {
//   start_date_day.addEventListener("change", function() {
//     // je calcule le nouveau prix;
//     total_price(price_per_day, date(start_date_day, start_date_month), date(start_end_day, start_end_month));
//     // j'affiche le nouveau prix dans la div prix total
//     total_price.innerHTML = total + " €"
//   })
// }
// function displayTotalPrice(total_price) {
//   if (booking_start_date_3i = []);
//     total_price = "0 €";
//   } else {
//     if end_date < start_date;
//       Console.log ("Please change your End Date (Need End Date > Start Date");
//     } else {
//       total_price = (end_date - start_date) * price_per_day;
// };

export { displayTotalPrice }

        // document.getElementById("id");
        // if Start change ou End change, alors calcul prix
          // function calcul prix
          // if durée End date < Start Date, alors Message error
          // else
          //    j'qffiche le prix

    // j'xporte la fonctionn display
