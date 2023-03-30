function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('The value of env is:', env);

  var config = {
      baseURL : "https://api.todoist.com/rest/v1",
      tokenID : "de972ae55f73303563fdce16a70a4fa1080229f3"
    }

  karate.configure('connectTimeout',5000)
  karate.configure('readTimeout',5000)
  return config;
  }