const mongoose = require("mongoose");
const { ObjectId } = mongoose.Schema;

var reportSchema = mongoose.Schema(
  {
    result: {
      type: String,
    },
    testType: {
      type: String,
    },
    user: {
        type: ObjectId,
        ref: "User",
      },
  },
  { timestamps: true }
);

module.exports = mongoose.model("Report", reportSchema);
