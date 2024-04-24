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

#Summarization

#Create files using MCV pattern
#Model class, View class, Controll Class (Add Database(repository), Add Router(Guide user what to do) Add interface (Instantiate all classes))
#In model class, in a task manager project context, it should add the task name and its status
# In View class, it will display user what they should do and obtain that user input data to Controller class
# In Repository, It will contain an empty array where we should store the tasks and methods to manipulate this array.
#In controller, It will intermediary for Model, View and repository
#Example in "add action" context, Controller class with ask for user input and get that input using View class
#Controller class will then hit Model Task to instantiate the user input from view class.
#Controll class will then get that instantiated input from model task and push it to the repository(database) empty array instance variable
