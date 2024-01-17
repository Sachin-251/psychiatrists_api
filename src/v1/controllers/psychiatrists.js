const query = require("../../database/connect");
const createCustomError = require("../../errors/customError");
const tryCatchWrapper = require("../../middlewares/tryCatchWrapper");
const bcrypt = require("bcrypt");


const createNewPatient = tryCatchWrapper(async function (req, res, next){
    let {name, address, email, phone, password, image, psychiatrist_id, psychiatrist_name} = req.body;

    if(!name || ! address || !email || !password || !image || !psychiatrist_id || !psychiatrist_name){
        return next(createCustomError("All fields are required", 400));
    }

    if(address.length < 10){
        return next(createCustomError("Address is too short", 400));
    }
    if(!validateEmail(email)){
        console.log("invalid email");
        return next(createCustomError("Invalid Email", 400));
    }
    if((password.length < 2 && password.length > 20) || !validatePassword(password)){
        return next(createCustomError("Invalid Password! Password should have atleat 1 upper case, 1 lower case, and one numeric character.", 400));
    }
    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);
    password = hashedPassword;
    if(!validatePhone(phone)){
        return next(createCustomError("Invalid Phone Number.", 400));
    }

    let sqlQuery = "INSERT INTO patients (name, address, email, phone, password, image, psychiatrist_id, psychiatrist_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

    const result = await query(sqlQuery, [name, address, email, phone, password, image, psychiatrist_id, psychiatrist_name]);

    await getPsychaitrists(psychiatrist_id);

    return res.status(201).json({message: "Patient record added."});
})

const getAllPsychaitrists = async (req, res) => {
    const {hospitalId} = req.params;
    const sqlQuery = "Select hospital AS Hospital, COUNT(id) AS TotalPsychiatristsCount, SUM(patient_count) AS TotalPatientCount FROM psychiatrists WHERE hospital_id = ?";
    const result1 = await query(sqlQuery, [hospitalId]);
    const query2 = "SELECT id AS Id, psychiatrist_name AS Name, patient_count AS Patient_Count FROM psychiatrists WHERE hospital_id = ?";
    const result2 = await query(query2, [hospitalId]);
    const result = {
        Hospital :result1[0].Hospital,
        "Total Psychiatrists Count": result1[0].TotalPsychiatristsCount,
        "Total Patient Count": result1[0].TotalPatientCount,
        "Psychiatrist Details": result2,
    };
    res.status(200).json(result);
};




//Helper Methods

const getPsychaitrists = async (id) => {
    let getCountQuery = `SELECT patient_count FROM psychiatrists WHERE id = ?`;
    const getCount = await query(getCountQuery, [id]);
    const count =  getCount[0].patient_count + 1;
    let updateQuery = "UPDATE psychiatrists SET patient_count = ? WHERE id = ?";
    const result = await query(updateQuery, [count, id]);
    return result;
}

const validateEmail = (email) => {
    const regularExp = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if(!regularExp.test(email)){
        return false;
    }else{
        return true;
    }
}

const validatePassword = (password) => {
    const regularExp = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,20}$/;
    if(!regularExp.test(password)){
        return false;
    }else{
        return true;
    }
}

const validatePhone = (phone) => {
    const regularExp = /^\+((?:9[679]|8[035789]|6[789]|5[90]|42|3[578]|2[1-689])|9[0-58]|8[1246]|6[0-6]|5[1-8]|4[013-9]|3[0-469]|2[70]|7|1)(?:\W*\d){0,13}\d$/;
    if(!regularExp.test(phone)){
        return false;
    }else{
        return true;
    }
}




module.exports = {getAllPsychaitrists, createNewPatient};