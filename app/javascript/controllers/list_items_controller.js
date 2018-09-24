import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'query', 'currentPage', 'perPage' ]

  connect() {
    this.load(this.data.get("url"))
  }

  change_search(e) {
    this.queryTarget.innerHTML = e.target.value
    var url = this.data.get("url") + '&search=' + e.target.value
    this.load(url)
    var html_url = this.data.get("html-url") + '&search=' + e.target.value
    this.pushState(html_url, 1)
  }

  change_page(e) {
    e.preventDefault()
    this.load(e.target.getAttribute('href'))
    var to_go_page = e.target.dataset.page
    var per_page = e.target.dataset.perPage
    var search_query = this.queryTarget.value
    var url = `/stimulus/list_items?page=${to_go_page}&per_page=${per_page}&search=${search_query}`
    this.pushState(url, to_go_page)
  }

  pushState(url, page){
    history.pushState({turbolinks: true, url: url}, `Page ${page}`, url)
  }

  load(url) {
    fetch(url)
      .then(response => response.text())
      .then(html => {
        this.element.children.namedItem('list-items-records').innerHTML = html
      })
  }
}