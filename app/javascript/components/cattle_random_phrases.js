import Rails from '@rails/ujs';

const generateRandomCattlePhrase = () => {
  const bolsoButton = document.querySelector("#bolsominion");
  const petistaButton = document.querySelector("#petista");

  document.body.addEventListener('click', event => {
    if (event.target !== bolsoButton && event.target !== petistaButton) {
      return
    }
      console.log(event.target.attributes.data.value);
      const randomPhrase = document.querySelector("#random_phrase");
      fetch(`/cattles/${event.target.attributes.data.value}`, {
        method: "GET",
        headers: {
          "Content-Type": "application/json"
        }
      })
      .then(response => response.json())
      .then((data) => {
        console.log(data.text);
        randomPhrase.innerHTML = data.text;
        randomPhrase.classList.add('btn','btn-ghost');
        });



  })
}

export { generateRandomCattlePhrase };



// Rails.ajax({
//   url: `/cattles/${event.target.attributes.data.value}`,
//   type: "GET",
//   success: function (data) {
//     console.log(data);
//   }
// });
