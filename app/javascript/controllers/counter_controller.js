import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "count" ]

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    // console.log(this.countTarget.innerText);
    setInterval(this.refresh, 1000);
  }

  refresh = () => {
    fetch('/restaurants', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        this.countTarget.innerText = data.restaurants.length;
      });
    // Nosso objetivo é fazer um fetch, ou seja, um AJAX
    // para o servidor.. E pegar um json de volta, com os
    // restaurantes ou com o nr de restaurantes

    // Para podermos atualizar o this.countTarget.innerText

  }
}
