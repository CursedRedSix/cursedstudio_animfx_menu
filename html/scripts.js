
window.addEventListener('message', function(event) {
    const data = event.data;
    if (data.type === 'open') {
        document.body.style.display = 'block';
        const list = document.getElementById('effect-list');
        list.innerHTML = '';

        data.effects.forEach(effect => {
            const btn = document.createElement('button');
            btn.textContent = effect;

            btn.onclick = () => {
                // Send effect to Lua
                fetch('https://cursedstudio_animfx_menu/select', {
                    method: 'POST',
                    body: JSON.stringify({ effect: effect })
                });

                // Highlight the selected button
                document.querySelectorAll('#effect-list button').forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
            };

            list.appendChild(btn);
        });
    } else if (data.type === 'close') {
        document.body.style.display = 'none';

        // Remove highlight when closed
        document.querySelectorAll('#effect-list button').forEach(b => b.classList.remove('active'));
    }
});

document.getElementById('play-btn').onclick = () => {
    fetch('https://cursedstudio_animfx_menu/play', { method: 'POST' });
};

document.getElementById('stop-btn').onclick = () => {
    fetch('https://cursedstudio_animfx_menu/stop', { method: 'POST' });

    // Remove highlight on stop
    document.querySelectorAll('#effect-list button').forEach(b => b.classList.remove('active'));
};

document.getElementById('close-btn').onclick = () => {
    fetch('https://cursedstudio_animfx_menu/close', { method: 'POST' });

    // Remove highlight
    document.querySelectorAll('#effect-list button').forEach(b => b.classList.remove('active'));
};

document.addEventListener('keydown', function (event) {
    if (event.key === "Escape") {
        fetch('https://cursedstudio_animfx_menu/close', {
            method: 'POST'
        });

        // Remove highlight
        document.querySelectorAll('#effect-list button').forEach(b => b.classList.remove('active'));
    }
});
