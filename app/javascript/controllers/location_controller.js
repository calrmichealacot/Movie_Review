import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
 static targets = ['selectedRegionId']

  fetchProvinces(){
       $.ajax({
           type: 'GET',
           url: '/api/regions/' + this.selectedRegionIdTarget.value + '/provinces',
           dataType: 'json',
           success: (response) => {
             console.log(response)
           }
       })
  }
}
