import { useState, useEffect } from "react";

function Clima() {
  const [lista, setLista] = useState([]);
  var data = new Date();
  var dia = data.getDate();
  var mes = data.getMonth();
  var ano = data.getFullYear();
  var hora = data.getHours();
  var min = data.getMinutes();

  useEffect(() => {
    fetch(
      "https://weather.contrateumdev.com.br/api/weather/city/?city=santa cruz da conceição,sao paulo",
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
        },
      }
    )
      .then((resp) => resp.json())
      .then((data) => {
        setLista(data);
        console.log(data);
      })
      .catch((err) => console.log(err));
  }, []);

  return (
    <>
      <div class="container-fluid px-1 col-4 px-md-4 py-5 mx-auto">
        <div class="row d-flex justify-content-center px-3">
          <div class="card">
            <h2 class="ml-auto mr-4 mt-3 mb-0">{lista.name}</h2>
            <p class="ml-auto mr-4 mb-0 med-font">Céu Limpo</p>
            <h1 class="ml-auto mr-4 large-font">{lista.main.feels_like}&#176;</h1>
            <p class="time-font mb-0 ml-4 mt-auto">{`${hora}:${min}`}</p>
            <p class="ml-4 mb-4">{`${dia}/${mes}/${ano}`}</p>
          </div>
        </div>
      </div>
    </>
  );
}

export default Clima;
