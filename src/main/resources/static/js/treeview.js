$(document).ready(function () {
	$('#treeview1').treeview({
		backColor: "#FFFFFF",
		color: "#428bca",
		enableLinks: true,
		data: getTree()
	});
	$('#treeview2').treeview({
		color: "#428bca",
		expandIcon: 'fas fa-plus',
		collapseIcon: 'fas fa-minus',
		data: getTree()
	});
	$('#treeview3').treeview({
		expandIcon: "glyphicon glyphicon-stop",
		collapseIcon: "glyphicon glyphicon-unchecked",
		nodeIcon: "glyphicon glyphicon-user",
		color: "yellow",
		backColor: "purple",
		onhoverColor: "orange",
		borderColor: "red",
		showBorder: false,
		showTags: true,
		highlightSelected: true,
		selectedColor: "yellow",
		selectedBackColor: "darkorange",
		data: getTree()
	});

	function getTree() {
		var data = [
			{
				text: 'Parent 1',
				href: '#parent1',
				tags: ['4'],
				nodes: [
					{
						text: 'Child 1',
						href: '#child1',
						tags: ['2'],
						nodes: [
							{
								text: 'Grandchild 1',
								href: '#grandchild1',
								tags: ['0']
							},
							{
								text: 'Grandchild 2',
								href: '#grandchild2',
								tags: ['0']
							},
							{
								text: 'Grandchild 3',
								href: '#grandchild3',
								tags: ['0']
							},
							{
								text: 'Grandchild 4',
								href: '#grandchild4',
								tags: ['0']
							},
							{
								text: 'Grandchild 5',
								href: '#grandchild5',
								tags: ['0']
							},
							{
								text: 'Grandchild 6',
								href: '#grandchild6',
								tags: ['0']
							},
							{
								text: 'Grandchild 1',
								href: '#grandchild1',
								tags: ['0']
							},
							{
								text: 'Grandchild 2',
								href: '#grandchild2',
								tags: ['0']
							},
							{
								text: 'Grandchild 3',
								href: '#grandchild3',
								tags: ['0']
							},
							{
								text: 'Grandchild 4',
								href: '#grandchild4',
								tags: ['0']
							},
							{
								text: 'Grandchild 5',
								href: '#grandchild5',
								tags: ['0']
							},
							{
								text: 'Grandchild 6',
								href: '#grandchild6',
								tags: ['0']
							},
							{
								text: 'Grandchild 1',
								href: '#grandchild1',
								tags: ['0']
							},
							{
								text: 'Grandchild 2',
								href: '#grandchild2',
								tags: ['0']
							},
							{
								text: 'Grandchild 3',
								href: '#grandchild3',
								tags: ['0']
							},
							{
								text: 'Grandchild 4',
								href: '#grandchild4',
								tags: ['0']
							},
							{
								text: 'Grandchild 5',
								href: '#grandchild5',
								tags: ['0']
							},
							{
								text: 'Grandchild 6',
								href: '#grandchild6',
								tags: ['0']
							},
							{
								text: 'Grandchild 1',
								href: '#grandchild1',
								tags: ['0']
							},
							{
								text: 'Grandchild 2',
								href: '#grandchild2',
								tags: ['0']
							},
							{
								text: 'Grandchild 3',
								href: '#grandchild3',
								tags: ['0']
							},
							{
								text: 'Grandchild 4',
								href: '#grandchild4',
								tags: ['0']
							},
							{
								text: 'Grandchild 5',
								href: '#grandchild5',
								tags: ['0']
							},
							{
								text: 'Grandchild 6',
								href: '#grandchild6',
								tags: ['0']
							}
						]
					},
					{
						text: 'Child 2',
						href: '#child2',
						tags: ['0']
					}
				]
			},
			{
				text: 'Parent 2',
				href: '#parent2',
				tags: ['0']
			},
			{
				text: 'Parent 3',
				href: '#parent3',
				tags: ['0']
			},
			{
				text: 'Parent 4',
				href: '#parent4',
				tags: ['0']
			},
			{
				text: 'Parent 5',
				href: '#parent5',
				tags: ['0']
			}
		];
		return data;
	}
});