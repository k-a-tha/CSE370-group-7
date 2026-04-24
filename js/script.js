// Load comics on page load
document.addEventListener('DOMContentLoaded', function() {
    loadComics();
});

// Fetch and display comics
function loadComics() {
    const container = document.getElementById('comics-container');
    
    if (!container) return;

    fetch('../php/get_comics.php')
        .then(response => response.json())
        .then(comics => {
            if (comics.length === 0) {
                container.innerHTML = '<p style="text-align: center; color: #888;">No comics available yet</p>';
                return;
            }

            let html = '';
            comics.forEach(comic => {
                html += `
                    <div class="comic-card">
                        <img src="https://via.placeholder.com/200x250?text=${encodeURIComponent(comic.Name)}" alt="${comic.Name}">
                        <div class="comic-card-content">
                            <h4>${comic.Name}</h4>
                            <p>${comic.Synopsis ? comic.Synopsis.substring(0, 100) + '...' : 'No description available'}</p>
                        </div>
                    </div>
                `;
            });
            container.innerHTML = html;
        })
        .catch(error => {
            console.error('Error loading comics:', error);
            container.innerHTML = '<p style="text-align: center; color: #e74c3c;">Error loading comics</p>';
        });
}
