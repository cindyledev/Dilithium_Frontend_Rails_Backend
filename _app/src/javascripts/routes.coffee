import { route } from 'dilithium-js'
import PagesHome from 'views/pages/home'
import TasksIndex from 'views/tasks/index'

routes =
  '/': PagesHome
  '/tasks': TasksIndex
route.prefix = ''
route document.body, '/', routes
