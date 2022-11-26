// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
import "controllers"

const menu = document.getElementById('off-canvas');
const link = document.querySelector('.menu li a')

document.querySelector('.bi-list').addEventListener('click', (e) => {
   e.preventDefault();
   menu.classList.toggle('on');
})

document.querySelector('.bi-x-lg').addEventListener('click', (e) => {
  e.preventDefault();
  menu.classList.toggle('on');
});

link.addEventListener('click', (e) => {
    e.preventDefault();
    menu.classList.toggle('on');
})