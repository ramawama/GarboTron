APIURL = " https://a35c-128-227-1-41.ngrok-free.app"
// Gets the distance from the actuator
function getDistance() {
    const apiUrl = APIURL + '/garbotron/distance';
    fetch(apiUrl)
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json();
      })
      .then(data => {
        const distanceElement = document.getElementById('distance');
        distanceElement.textContent = `Distance: ${data.distance}`;
      })
      .catch(error => {
        console.error('Fetch Error:', error);
      });
  }

  // Gets the percent from the actuator
function getPercent() {
    const apiUrl = APIURL + '/garbotron/percent';
    fetch(apiUrl)
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json();
      })
      .then(data => {
        const percentElement = document.getElementById('percent');
        percentElement.textContent = `Percent: ${data.percent}`;
      })
      .catch(error => {
        console.error('Fetch Error:', error);
      });
  }

  // Gets the info on the GarboTron IOT device
  function getInfo() {
    const apiUrl = APIURL + '/garbotron';
    fetch(apiUrl)
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json();
      })
      .then(data => {
        displayJson(data);
      })
      .catch(error => {
        console.error('Fetch Error:', error);
      });
  }

  // Displays the JSON data in the HTML
  function displayJson(jsonData) {
    var jsonString = JSON.stringify(jsonData, null, 2);
    jsonString = jsonString.replace(/[{},"]/g, ''); // Remove curly braces and quotation marks
    var jsonContainer = document.getElementById('garbotron-json');
    jsonContainer.textContent = jsonString;
  }
  
