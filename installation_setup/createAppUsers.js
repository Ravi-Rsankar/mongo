use exspv2
db.createUser({user:"exactspaceapi", pwd:"exactapi123", roles:[{role:"readWrite", db:"exspv2"}]})
db.updateUser({user:"exactspaceapi",  roles:[{role:"readWrite", db:"exspv2"}]})

use dfk
db.createUser({user:"dfkapi", pwd:"dfkapi123", roles:[{role:"readWrite", db:"dfk"}]})

use utv
db.createUser({user:"utvapi", pwd:"utvapi123", roles:[{role:"readWrite", db:"utv"}]})

