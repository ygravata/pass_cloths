import Rails from '@rails/ujs';

const generateRandomCattlePhrase = () => {
  const bolsoButton = document.querySelector("#bolsominion");
  const petistaButton = document.querySelector("#petista");
  const doubleButton = document.querySelector("#double_owner");

  document.body.addEventListener('click', event => {
    console.log(event.target);
    const randomPhrase = document.querySelector("#random_phrase");
    if (event.target !== bolsoButton && event.target !== petistaButton && event.target !== doubleButton) {
      return
    } else if (event.target == doubleButton) {
      fetch(`/cattles/double`, {
        method: "GET",
        headers: {
          "Content-Type": "application/json"
        }
      })
        .then(response => response.json())
        .then((data) => {
          console.log(data.count);
          randomPhrase.innerHTML = data.phrase.text;
          randomPhrase.classList = "";
          randomPhrase.classList.add('btn', 'btn-ghost', 'color-bolso-pete', 'mt-5');
        });
    } else {
      fetch(`/cattles/${event.target.attributes.data.value}`, {
        method: "GET",
        headers: {
          "Content-Type": "application/json"
        }
      })
      .then(response => response.json())
      .then((data) => {
        console.log(data.count);
        randomPhrase.innerHTML = data.phrase.text;
        if (data.count == 2) {
          randomPhrase.classList = "";
          randomPhrase.classList.add('btn', 'btn-ghost', 'color-bolso-pete', 'mt-1');
        } else {
          if (event.target == bolsoButton) {
            randomPhrase.classList = "";
            randomPhrase.classList.add('btn', 'btn-ghost', 'color-bolso', 'mt-5');
          };
          if (event.target == petistaButton) {
            randomPhrase.classList = "";
            randomPhrase.classList.add('btn', 'btn-ghost', 'color-pete', 'mt-5');
          };
        };
        });
    };

    }

  );
}

export { generateRandomCattlePhrase };



// Rails.ajax({
//   url: `/cattles/${event.target.attributes.data.value}`,
//   type: "GET",
//   success: function (data) {
//     console.log(data);
//   }
// });
