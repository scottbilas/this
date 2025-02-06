function applyTheme(dark) {
    document.documentElement.setAttribute('data-theme', dark ? 'dark' : 'light')
    var icon = feather.icons[dark ? 'sun' : 'moon']
    var moon = document.getElementById('moon')
    moon.innerHTML = icon.toSvg({'fill': 'var(--fg-color-dark)'})
}

var checkbox = document.querySelector('input[name=mode]')
var prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches

applyTheme(prefersDark)
checkbox.checked = prefersDark
checkbox.addEventListener('change', function() { applyTheme(this.checked) });
