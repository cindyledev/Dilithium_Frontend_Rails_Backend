import { m, Component, InputText } from 'dilithium-js'
import Api from 'services/api'

export default class TasksForm extends Component
  expect:
    model: true
  submit:(ev)=>
    ev.preventDefault()
    attrs = 
      task: @model.params()
    console.log 'attrs', attrs
    Api.tasks.create attrs
    return false
  render:=>
    m 'form.tasks_form', onsubmit: @submit,
      m InputText, attribute: @model.name, handle: 'name', placeholder: 'Write a new task'
      m "input[type='submit']", value: 'Create'