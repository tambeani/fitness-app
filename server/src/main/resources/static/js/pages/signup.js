import { makeRequest } from '../common/api.js';
import { showToast } from "../common/toast.js";

// Use DOMContentLoaded directly in signup.js
document.addEventListener('DOMContentLoaded', () => {
	
  // Attach the onSubmit function to the button click event
  const form = document.getElementById('sign-up');
  if (form) {
    form.addEventListener('submit', onSubmit);
  }
  
});

const onSubmit = (event) => {
	// Prevent the default form submission
  event.preventDefault(); 
	
	// Fetch Form-data	
	const formData = new FormData(event.target);
	const credentials = Object.fromEntries(formData.entries());

	// Invoke makeRequest(url, method, formData, onSuccess, onError) 
  makeRequest('/api/users', 'POST', credentials, onSuccess, onError);

}

// Define the onSuccess and onError functions as needed
const onSuccess = (data) => {
  showToast("Request successfull!!", "success" );
};

const onError = (error) => {
  showToast("Request Failed", "fail");
};


export { onSubmit }