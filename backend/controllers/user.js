const User = require("../models/user");

exports.getUserById = (req, res) => {
  User.findById(req.params.userId).exec((err, user) => {
    if (err || !user) {
      return res.status(400).json({
        error: "No user was found in DB",
      });
    }
    user.password = undefined;
    res.json(user);
  });
};

//Update User
exports.updateUser = (req, res) => {
  User.findByIdAndUpdate(
    { _id: req.params.userId },
    { $set: req.body },
    { new: true, useFindAndModify: false },
    (err, user) => {
      if (err) {
        return res.status(400).json({
          error: "You are not authorized to update this user",
        });
      }
      user.password = undefined;
      res.json(user);
    }
  );
};

