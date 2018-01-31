console.log('Service started');

setTimeout(() => {
  console.log('Service shutdown');
  process.exit(0);
}, 60 * 1000);
