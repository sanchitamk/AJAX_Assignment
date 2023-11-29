let fName=document.querySelector("#fName");
let lName=document.querySelector("#lName");
let email=document.querySelector("#email");
let formMessage=document.querySelector("#formMessage");
let contactform=document.querySelector("#contactform");

//tried this approach but didn't work
// let interests=[];
// let checkboxes = document.querySelectorAll('[name="interests[]"]:checked');
// for (let i = 0; i < checkboxes.length; i++) {
// interests.push(checkboxes[i].value);
// }

contactform.addEventListener("submit", submitForm);

function submitForm(event){


   event.preventDefault();

   let role=document.querySelector('input[name="role"]:checked').value;

   let industryCheckbox = document.querySelector('#industry');
   let technicalCheckbox = document.querySelector('#technical');
   let careerCheckbox = document.querySelector('#career');

   let industry_interest, technical_interest, career_interest;

   if (industryCheckbox.checked) {
    industry_interest = 'Interested';
   } else {
    industry_interest = 'Not Interested';
   }

   if (technicalCheckbox.checked) {
    technical_interest = 'Interested';
   } else {
    technical_interest = 'Not Interested';
   }

   if (careerCheckbox.checked) {
    career_interest = 'Interested';
   } else {
    career_interest = 'Not Interested';
   }


    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange = handlerResponse; 
	xhr.open("POST", "process-insert.php", true); 
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); 
	xhr.send(`fName=${fName.value}&lName=${lName.value}&email=${email.value}&industry_interest=${industry_interest}&technical_interest=${technical_interest}&career_interest=${career_interest}&role=${role}`);
    

    function handlerResponse(resevent){
    

		
		if(xhr.readyState === XMLHttpRequest.DONE){

			if (xhr.status === 200) {
				let responseJSON = JSON.parse(xhr.responseText);
				console.log(responseJSON);
				if(responseJSON.success == "true"){
					document.querySelector("#formMessage").innerHTML = "Thank you!";
					document.querySelector("#formMessage").style.color = "green";

					fName.remove();
					lName.remove(); 
					email.remove();
					contactform.remove(); 

					}else{
						document.querySelector("#formMessage").innerHTML = "OOPS FAILURE";
					}
				
				} else {
					//status code error
				}
		}
	}
}


