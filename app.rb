require_relative "model_task"
require_relative "task_repository"
require_relative "view_task"
require_relative "controller_task"
require_relative "router"

repository = TaskRepository.new
view = ViewTask.new

controller = ControllerTask.new(view, repository)

router = Router.new(controller)

router.run
