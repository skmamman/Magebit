const form = document.getElementById('form');
const email= document.getElementById('email');
const checkBox = document.getElementById('checkbox');
const button = document.getElementById('submit');
const log = document.querySelector(".result");
let checkError = 0;
let isError ="";

let displayError = () => {
  if((button.disabled)&&(checkError === 1))
  {
    log.innerText=isError;
  }
}

email.onkeyup = (event) =>{
    validate(event);
}

checkBox.addEventListener('click', (event) => {
  //console.log("checked");
  if(!checkBox.checked) {
    //console.log('!checked');
    setErrorMsg(checkBox,"You must accept the terms and conditions");
  } else {
    //console.log('check validate');
    validate(event);
    if(button.disabled){
      checkError = 1;
      displayError();
    }
  }
}); 

form.onkeydown = (event) => {
  if ((event.code==='Enter')&&(isError!="")) {
    button.setAttribute('disabled', 'disabled');
    checkError = 1;
    displayError();
  }
}

button.onmouseenter = (event) => {
  //event.preventDefault();
  checkError = 1;
  validate(event);
}


function validate(event){
    const emailVal = email.value.trim();
    //console.log('email validate', emailVal);
    if (emailVal === "") {
      setErrorMsg(email,"Email address is required");
    } else if (emailVal.endsWith(".co")) {
      setErrorMsg(email,"We are not accepting subscriptions from Colombia emails");
    } else if (!validEmail(emailVal)) {
      setErrorMsg(email,"Please enter valid email id");
    }else {
        if(!checkBox.checked) {
            setErrorMsg(checkBox,"You must accept the terms and conditions");
        } else {
            setSuccessMsg(email);
    }
  }
}

const validEmail = (emailVal) => {
  let at = emailVal.indexOf("@");
  let dot = emailVal.lastIndexOf('.');
  
  if((at<1)||(dot <= at + 2)||(dot === emailVal.length - 2)){
    //console.log(dot);
    return false;
  } 
  return true;
}

function setErrorMsg(input, error) {
  isError = error;
  //button.disabled = true;
  if(checkError === 1){
    button.setAttribute('disabled', 'disabled');
    //console.log("button disable");
    displayError();
  }
}

function setSuccessMsg(input){
  button.disabled = false;
  if (input.value.length>8){
    isError = "";
    log.innerText = isError;
  }
}
