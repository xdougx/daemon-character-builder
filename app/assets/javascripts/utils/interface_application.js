var IApp = (function() {
	var InterfaceApp = function() {

		this.run = function(obj, vars) {
			if(obj == null) { obj = this.modules; }
			if(vars !== undefined) { this.addGlobals(vars); }
			this.callEvents(obj);

		};

		this.callEvents = function(obj){
			for(var method in obj){
				if(method.match(/call|run|globals/) != null )	continue;

				if(typeof obj[method] === "object" && obj[method] != null ) {
					this.run(obj[method]);
				} else if(typeof obj[method] === "function"){
					obj[method]();
				}
			}
		};

		this.modules = {};
		this.addModules = function(modules){
			for(var module in modules) {
				modules["globals"] = this.globals;
				this.modules[module] = modules[module];
			} 

			this.modules["globals"] = this.globals;
			return this;
		}

		this.globals = {};
		this.addGlobals = function(vars){
			if(typeof vars == "object" ){
				for(var e in vars) {
					this.globals[e] = vars[e];
				}
			}
			this.addGlobalsToModules(vars);
		}

		this.addGlobalsToModules = function(vars){
			for(var module in this.modules){
				if( this.modules[module]["globals"] === undefined ){
					this.modules[module]["globals"] = {}
				}
				for(var e in vars) {
					this.modules[module]["globals"][e] = vars[e];
				}
			}
		}

	}

	//shared
	InterfaceApp.prototype = {
		_globals: function(){
			return this.globals;
		}
	}

	return InterfaceApp;

})();