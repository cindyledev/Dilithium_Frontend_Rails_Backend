import { m, Link, View } from 'dilithium-js'
import Api from 'services/api'
import Task from 'components/task'
import TaskModel from 'models/task'
import TasksForm from 'components/tasks_form'

export default class TasksIndex extends View
  events:
    'tasks/index': 'success'
  constructor:(args)->
    super(args)
    @model = new TaskModel()
  reindex:=>
    console.log 'api', Api
    Api.tasks.index()
  success:(data)=>
    console.log 'success', data
    @tasks = data
    @loading = false
  render:=>
    return unless @tasks
    m 'main',
      m TasksForm, model: @model
      m '.tasks',
        for task in @tasks
          m Task, model: task
        m Link, href: '/', 'Go Back'