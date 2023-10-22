// // Your web app's Firebase configuration
// const firebaseConfig = {
//     apiKey: 'YOUR_API_KEY',
//     authDomain: 'YOUR_AUTH_DOMAIN',
//     projectId: 'YOUR_PROJECT_ID',
//     storageBucket: 'YOUR_STORAGE_BUCKET',
//     messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
//     appId: 'YOUR_APP_ID',
//   };
  
//   // Initialize Firebase
//   const app = firebase.initializeApp(firebaseConfig);
//   const db = firebase.firestore(app);
//   console.log(db)

//   db.collection("Lochotron").get().then((User) => {
//     User.forEach((doc) => {
//         console.log(`${doc.id} => ${doc.data()}`);
//     });
// });

const express = require('express') 
const app = express()

app.use(express.static('public'));
app.post('/chatGPT', function(req, res, next){
  res.send('hello world');
});

const PORT = 4000

app.listen(PORT, ()=> {
    console.log(`server is running: http://localhost:${PORT}`)
})

