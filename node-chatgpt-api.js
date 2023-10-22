const { OpenAI } = require("openai");
const readline = require("readline");
require("dotenv").config();

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

const openai = new OpenAI({
  key: process.env.OPENAI_API_KEY,
  model: "gpt-3.5-turbo"
});

const history = [];

const getUserInput = () => {
  return new Promise((resolve) => {
    rl.question("Your input: ", (userInput) => {
      resolve(userInput);
    });
  });
};

const main = async () => {
  while (true) {
    const user_input = await getUserInput();

    const messages = [];
    for (const [input_text, completion_text] of history) {
      messages.push({ role: "system", content: "You are a helpful assistant that provides information about anti-scam practices." });
      messages.push({ role: "user", content: input_text });
      messages.push({ role: "assistant", content: completion_text });
    }

    messages.push({ role: "system", content: "You are a helpful assistant that provides information about anti-scam practices." });
    messages.push({ role: "user", content: user_input });

    try {
      const chatCompletion = await openai.chat.completions.create({
        messages: [{ role: 'user', content: 'Say this is a test' }],
        model: 'gpt-3.5-turbo',
      });
  
      const completion_text = chatCompletion.choices[0].message.content;
      console.log(completion_text);

      history.push([user_input, completion_text]);

      const user_input_again = await getUserInput();
      if (user_input_again.toUpperCase() !== "Y") {
        rl.close();
        return;
      }
    } catch (error) {
     console.error("Error:", error.message || error);
     rl.close();
     return;
   }
  }
};

main();