console.log 'Hello from application coffee webpack'

# Import coffee scss manifest
import '../src/stylesheets/coffee/coffee';

# Coffescript configuration
import 'bootstrap/dist/js/bootstrap';

import Rails from 'rails-ujs'
import Turbolinks from 'turbolinks'

Rails.start();
Turbolinks.start();

# Import application specific scripts
import '../src/javascripts/coffee/list_items';