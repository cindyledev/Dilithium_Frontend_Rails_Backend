import { m, Link, View, Util } from 'dilithium-js'
import Api from 'services/api'
import Task from 'components/task'
import TaskModel from 'models/task'
import TasksForm from 'components/tasks_form'

export default class TasksIndex extends View
  events:
    'tasks/index': 'success'
    'tasks/create': 'create_success'
    'tasks/create#err': 'err'
  constructor:(args)->
    super(args)
    @model = new TaskModel()
  reindex:=>
    console.log 'api', Api
    Api.tasks.index()
  create_success:(data)=>
    console.log 'create_success', data
    Util.create @tasks, data
  success:(data)=>
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