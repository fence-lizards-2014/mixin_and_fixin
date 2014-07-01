AtomicSpider = {
  slingWeb: function() {
    function fullName() {
      return this.firstName + " " + this.lastName;
    }

    console.log('A gooey spiderweb filament flies forth from ' + fullName.call(this) + ': *SPLADOW*');
  },

  toString: function() {
    return "this powers of an Atomic Spider"
  }
}

peter = {
  firstName: "Peter",
  lastName: "Parker",

  toString: function () {
    return this.firstName + " " + this.lastName + ": a normal Brooklynite";
  }
}

function SpidermanPlotDevice(normalPerson, superPowers) {
  console.log("Mixing in " + superPowers.toString() + " to " + normalPerson.toString());
  for (var key in superPowers) {
    if (superPowers.hasOwnProperty(key)) {
      peter[key] = superPowers[key];
    }
  }
}

SpidermanPlotDevice(peter, AtomicSpider);
peter.slingWeb();
