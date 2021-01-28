const Report = require("../models/report");

exports.getReportById = (req, res) => {
  Report.findById(req.params.id)
    .populate("user")
    .exec((err, report) => {
      if (err) {
        return res.status(400).json({
          error: "No report was found in DB",
        });
      }      
      report.user.password = undefined;
      res.json(report);
    });
};

exports.getReportByUserId = (req, res) => {
  Report.find({ user: req.params.userId })
    .populate("user")
    .exec((err, report) => {
      if (err) {
        return res.status(400).json({
          error: "No report was found in DB",
        });
      }
      for(i = 0 ; i < report.length ; i++){
        report[i].user.password = undefined;
      }
      res.json(report);
    });
};

//Update User
exports.createReport = (req, res) => {
  const report = Report(req.body);
  report.save((err, report) => {
    if (err) {
      return res.status(400).json({
        error: "You are not authorized to create this report",
      });
    }
    res.json(report);
  });
};
