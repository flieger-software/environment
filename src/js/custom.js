(function Flieger() {
    'use strict';
    
    if (!(this instanceof Flieger)) {
        return new Flieger();
    }

    this.core = {
        init: function () {
        }

        dependencies: function() {
            var deferred = jQuery.Deferred();

            return deferred.promisse();
        }
    };
    
    this.core.init();
    
}());