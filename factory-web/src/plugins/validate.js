var ValidatePlugin = {
  // [ Moreira Development ] 
  // Author: Lucas Moreira
  // email: lucas@moreiradevelopment.io
  // ------------------------------------|
  // Validation Helper Plugin
  // ------------------------------------|
  //
  // This plugin abstracts some of the 
  // common Auth functions into a single place
  // for ease of use and maintenance.

  validateFields: function(payload, error){
    // Initiate Loop Var
    var i;
    // Error Flag
    var errorPresent = false;
    
    // Check for Empty Fields
    for (i = 0; i < payload.length; i++){
      if (payload[i].value === ""){
        errorPresent = true;
        $(payload[i]).addClass('mdev-error');
      }
    }
    
    // Return Errors
    if (errorPresent === true) {
      alertify.warning(error);
      return false;
    }
    else {
      return true;
    }
  },

  validateEmail: function(payload, error) {
    // Initiate Loop Var
    var i;
    // Initialize Flag
    var errorPresent = false;
    
    // Email Regex
    for (i = 0; i < payload.length; i++){
      if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(payload[0].value)){
        errorPresent = false;
      }
      else {
        $(payload[i]).addClass('mdev-error');
        errorPresent = true;
      }
    }
    
    // Return Errors
    if (errorPresent === true) {
      alertify.warning(error);
      return false;
    }
    else {
      return true;
    }
  },

  validatePassword: function(payload, error){
    // Validate Password Length
    if (payload.length < 6){
      alertify.warning(error);
      return false;
    }
    else {
      return true;
    }
    
  },

  validateDate: function(payload, error){
    var regDate = /^\d{2}\/\d{2}\/\d{4}$/;
    // Validate Password Length
    if (regDate.test(payload)){
      return true;
    }
    else {
      alertify.warning(error);
      return false;
    }
    
  },
  
  validateMatch: function (set, match, error){
    // Match Variables
    if( set === match ) {
      return true;
    }
    else {
      alertify.warning(error);
      return false;
    }
    
  },

  clearErrors: function(){
    $('.mdev-error').removeClass('mdev-error');
  }

  
};

export default function(Vue){
  Vue.validate = ValidatePlugin;

  Object.defineProperties(Vue.prototype, {
    
    $validate: {
      get: function() {
        return Vue.validate;
      }
    }
  });
};
