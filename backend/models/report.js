const mongoose = require("mongoose");
const { ObjectId } = mongoose.Schema;

var reportSchema = mongoose.Schema(
  {
    result: {
      type: String,
    },
    url: {
      type: String,
    },
    testData: {
      type: String
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
