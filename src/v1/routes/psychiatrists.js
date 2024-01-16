const express = require("express");
const patientController = require("../controllers/psychiatrists");
const router = express.Router();

router.get("/:hospitalId", patientController.getAllPsychaitrists);
router.post("/patient", patientController.createNewPatient);


module.exports = router;