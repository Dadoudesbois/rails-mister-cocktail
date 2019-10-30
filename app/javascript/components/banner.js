import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["FAVORITE COCKTAILS."],
    typeSpeed: 150,
    loop: false
  });
}

export { loadDynamicBannerText };
