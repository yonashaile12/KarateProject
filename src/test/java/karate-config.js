function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    spartan_base_url : 'http://52.201.187.226:8000/',

	myVarName: 'someValue',
    b20Slogan: 'VOILA',
    b20Slogan2: 'Nothing is impossible',
    b20Slogan3: 'Lets do the thing',
    b20Slogan4: 'before you give up, think why you started at the beginning',
    b20Slogan5: 'Take it and use it',
    b20Slogan6: 'zero to hero',
    b20Slogan7: 'Where is Ayhan cat?',
    b20Slogan8: 'Be a good manipulator',
    b20Slogan9: 'zeeeeeeeee Documentation?',
    b20Slogan10 : 'Be a good manipulator',
    b20Slogan11 : 'dont worry, you didnt miss anything',
    b20Slogan12 : 'lets get to the meat',
    b20Slogan13 : 'lets get to the meat'
  }
  if (env == 'dev') {
    // customize
    config.b20Slogan13 = 'Release the horse';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}