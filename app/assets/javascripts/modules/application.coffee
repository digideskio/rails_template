Module "Application", (Application) ->
  Application.fn.initialize = ->
    div = $("div.module")
    controller_name = div.attr("controller-name")
    action_name = div.attr("action-name")
    Module.run ["Application", controller_name].join(".")
    Module.run ["Application", controller_name, action_name].join(".")
    return
  return