import { ApiBase } from 'dilithium-js'

class Api extends ApiBase
  namespace: 'api'
  resources:
    tasks: true
    
export default new Api()