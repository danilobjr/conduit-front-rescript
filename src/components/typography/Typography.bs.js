// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as JsxUtils from "../../utils/JsxUtils.bs.js";

function Typography$Title(Props) {
  var children = Props.children;
  var className = Props.className;
  return React.createElement("h1", {
              className: JsxUtils.classNames("title", className)
            }, JsxUtils.str(children));
}

var Title = {
  make: Typography$Title
};

function Typography$Text(Props) {
  var children = Props.children;
  var className = Props.className;
  return React.createElement("span", {
              className: JsxUtils.classNames("text", className)
            }, JsxUtils.str(children));
}

var $$Text = {
  make: Typography$Text
};

export {
  Title ,
  $$Text ,
  
}
/* react Not a pure module */
