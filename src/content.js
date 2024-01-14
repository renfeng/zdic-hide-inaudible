[
  document.querySelector('.navigation'),
  document.querySelector('.footer_content'),
  document.querySelector('[id=gg_rslot]'),
  ...[...document.querySelectorAll('.lie_x.blan_x')].slice(0, 5),
  ...document.querySelectorAll('.copyright'),
  ...document.querySelectorAll('table[class]'),
].forEach((e) => (e.hidden = true));
document.querySelector('.mob').style.display = 'inherit';

const character = decodeURI(location.pathname).replace('/hans/', '');
[
  ...document
    .querySelector('[data-type-block="基本解释"]')
    .querySelectorAll('li'),
].forEach((e) => {
  e.innerText = e.innerText.replaceAll('～', character);
});

document.querySelector('.play-gif').click();
