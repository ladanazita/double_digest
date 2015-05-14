$(document).ready(function() {
// Initialize collapse button
  $(".button-collapse").sideNav({
      menuWidth: 260, // Default is 240
      edge: 'left', // Choose the horizontal origin
      closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
	}
  )
  });

// Show sideNav
$('.button-collapse').sideNav('show');
// Hide sideNav
$('.button-collapse').sideNav('hide');