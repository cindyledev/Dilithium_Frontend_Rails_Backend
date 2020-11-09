import { m, Link, View } from 'dilithium-js'
import Api from 'services/api'

export default class TasksIndex extends View
  events:
    'tasks/index': 'success'
  reindex:=>
    console.log 'api', Api
    Api.tasks.index()
  success:(data)=>
    console.log 'success', data
    @model = data
    @loading = false
  render:=>
    return unless @model
    m 'main',
      for task in @model
        m '.task',
          task.name
      m Link, href: '/', 'Go Back'