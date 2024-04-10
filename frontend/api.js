
function getDistance() {
    const apiUrl = 'http://127.0.0.1:5000/garbotron/distance';
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

function getPercent() {
    const apiUrl = 'http://127.0.0.1:5000/garbotron/percent';
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

  function getInfo() {
    const apiUrl = 'http://127.0.0.1:5000/garbotron';
    fetch(apiUrl)
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json();
      })
      .then(data => {
        console.log('API Response:', data);
      })
      .catch(error => {
        console.error('Fetch Error:', error);
      });
  }
  
