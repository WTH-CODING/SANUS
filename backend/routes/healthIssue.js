const express = require("express");
const router = express.Router();

const {
  getHIByUserId,
  getHIById,
  CreateHI
} = require("../controllers/healthIssue");
const { isSignedIn } = require("../controllers/auth");

router.get("/healthIssue/user/:userId", isSignedIn, getHIByUserId);
router.get("/healthIssue/:id", isSignedIn, getHIById);
router.post("/healthIssue/create", isSignedIn, CreateHI);

module.exports = router;