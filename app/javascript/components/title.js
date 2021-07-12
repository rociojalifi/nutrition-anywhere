import Typed from 'typed.js';

const loadDynamicTitleText = () => {
  const titleType = document.querySelector('#title-typed-text');
  if (titleType) {
    new Typed('#title-typed-text', {
      strings: ["Your bookings", "From Nutrition Anywhere"],
      typeSpeed: 50,
      loop: true
    });
  }
  
}

export { loadDynamicTitleText };