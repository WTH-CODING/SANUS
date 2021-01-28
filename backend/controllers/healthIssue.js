const HealthIssue = require("../models/healthIssue");

exports.getHIById = (req, res) => {
  HealthIssue.findById(req.params.id)
    .populate("user")
    .exec((err, healthIssue) => {
      if (err || !healthIssue) {
        return res.status(400).json({
          error: "No healthissue was found in DB",
        });
      }
      healthIssue.user.password = undefined;
      res.json(healthIssue);
    });
};

exports.CreateHI = (req, res) => {
  const HI = HealthIssue(req.body);
  HI.save((err, healthIssue) => {
    if (err) {
      return res.status(400).json({
        error: "You are not authorized to create this healthissue",
      });
    }
    res.json(healthIssue);
  });
};

exports.getHIByUserId = (req, res) => {
  HealthIssue.find({ user: req.params.userId })
    .populate("user")
    .exec((err, healthIssue) => {
      if (err) {
        return res.status(400).json({
          error: "healthissue not found in DB",
        });
      }
      for(i = 0 ; i < healthIssue.length ; i++){
        healthIssue[i].user.password = undefined;
      }
      res.json(healthIssue);
    });
};
