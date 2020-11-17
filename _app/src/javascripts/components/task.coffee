import { m, Component } from 'dilithium-js'

export default class Task extends Component
  expect:
    model: true
  render:=>
    m '.task.item',
      @model.name