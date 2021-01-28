const express = require("express");
const router = express.Router();

const {
  getReportById,
  getReportByUserId,
  createReport
} = require("../controllers/report");
const { isSignedIn } = require("../controllers/auth");

router.get("/report/user/:userId", isSignedIn, getReportByUserId);
router.get("/report/:id", isSignedIn, getReportById);
router.post("/report/create", isSignedIn, createReport);

module.exports = router;