// notifications.js

import { makeRequest } from "../common/api.js";
import { showToast } from "../common/toast.js";

// Check if the current URL contains "/notifications"
if (window.location.pathname.includes('/notifications')) {
  document.addEventListener('DOMContentLoaded', function () {
    console.log("notifications.js");
    registerCloseButtonClick();
  });
}

function registerCloseButtonClick() {
  // Get all close buttons on the page
  const closeButtons = document.querySelectorAll('.btn-close');

  // Attach a click event listener to each close button
  closeButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      // Extract nId from the button's data attribute or any other suitable method
      const nId = button.dataset.nId;

      // Call the onClose function with nId as a parameter
      onClose(nId);
    });
  });
}

function onClose(nId) {
  makeRequest('api/users/2/notifications/' + nId, 'DELETE', null, () => showToast("Notification deleted!!", "success"), () => showToast("Request Failed", "fail"));
}

export { onClose };
