const mongoose = require("mongoose");
const bcrypt = require("bcrypt");
const { ObjectId } = mongoose.Schema;

const ReportSchema = mongoose.Schema({
  report: {
    type: ObjectId,
    trim: true,
    ref: "Reports",
  },
});

const healthConditionsSchema = mongoose.Schema({
  issue: {
    type: ObjectId,
    trim: true,
    ref: "HealthCondition",
  },
});

var userSchema = mongoose.Schema(
  {
    issues: [healthConditionsSchema],
    reports: [ReportSchema],
    firstName: {
      type: String,
      maxlength: 64,
      required: true,
      trim: true,
    },
    lastName: {
      type: String,
      maxlength: 64,
      required: true,
      trim: true,
    },
    email: {
      type: String,
      trim: true,
      required: true,
      unique: true,
    },
    age: {
      type: String,
      trim: true,
    },
    phone: {
      type: String,
      trim: true,
    },
    gender: {
      type: String,
      trim: true,
    },
    city: {
      type: String,
      trim: true,
    },
    address: {
      type: String,
      trim: true,
    },
    password: {
      type: String,
      required: true,
    },
    role: {
      type: Number,
      default: 0, //0 - Normal User, 1 - Admin
    },
    dob: {
      type: Date,
      trim: true,
    },
    deviceToken: {
      type: String,
      trim: true,
    },
  },
  { timestamps: true }
);

userSchema.pre("save", function save(next) {
  const user = this;
  if (!user.isModified("password")) {
    return next();
  }
  bcrypt.genSalt(10, (err, salt) => {
    if (err) {
      return next(err);
    }
    bcrypt.hash(user.password, salt, (err, hash) => {
      if (err) {
        return next(err);
      }
      user.password = hash;
      next();
    });
  });
});

module.exports = mongoose.model("User", userSchema);
