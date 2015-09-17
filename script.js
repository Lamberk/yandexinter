var a {

	name: 'color'
	number: 3,
}

a.run = function(n) {
	this.number = this.number + n
	alert(this.number)
}

a.run(5)