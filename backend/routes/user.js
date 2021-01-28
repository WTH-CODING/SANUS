
const express = require("express");
const router = express.Router();

const {
  getUserById,
  updateUser,
} = require("../controllers/user");
const { isSignedIn } = require("../controllers/auth");

router.get("/user/:userId", isSignedIn, getUserById);
router.put("/user/:userId", isSignedIn, updateUser);

module.exports = router;