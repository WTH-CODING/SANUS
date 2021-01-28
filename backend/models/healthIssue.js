const mongoose = require("mongoose");
const { ObjectId } = mongoose.Schema;

var HealthConditionSchema = mongoose.Schema(
  {
    condition: {
      type: String,
    },
    description: {
      type: String,
    },
    medications: {
      type: String,
    },
    duration: {
      type: String,
    },
    user: {
      type: ObjectId,
      ref: "User",
    },
  },
  { timestamps: true }
);

module.exports = mongoose.model("HealthCondition", HealthConditionSchema);
