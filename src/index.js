const express = require("express");
const dotenv = require("dotenv");
const psychiatristsRoutes = require("./v1/routes/psychiatrists");

dotenv.config();
const app = express();

const PORT = process.env.PORT || 8001;

app.use(express.json());
app.use(express.urlencoded({
    extended: true,
}));

app.use("/api/v1", psychiatristsRoutes);

app.listen(PORT, () => {
    console.log(`API is listening on port ${PORT}`);
});