const express = require("express");
const app = express();

const creationTime = new Date();

app.get("/", (req, res) => {
    const currentTime = new Date();

    res.send("MindBehind - Gufran Yesilyurt\n" +
             "Oluşturulma Zamanı: " + creationTime.toLocaleString() + "\n" +
             "Güncel Zaman: " + currentTime.toLocaleString());
});

app.listen(80, () => {
    console.log("Server is up and running");
    console.log("MindBehind - Gufran Yesilyurt");
    console.log("Oluşturulma Zamanı:", creationTime.toLocaleString());

    const currentTime = new Date();
    console.log("Güncel Zaman:", currentTime.toLocaleString());
});

