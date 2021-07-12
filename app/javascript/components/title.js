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

const loadDynamicIndexTitleText = () => {
  const indexTitleType = document.querySelector('#index-title-typed-text');
  if (indexTitleType) {
    new Typed('#index-title-typed-text', {
      strings: ["Your Nationality", "Your Language", "Your Budget"],
      typeSpeed: 50,
      loop: true
    });
  }
  
}

export { loadDynamicTitleText };
export { loadDynamicIndexTitleText };
