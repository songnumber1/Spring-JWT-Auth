$(document).ready(function() {
	// https://github.com/patternfly/patternfly-bootstrap-treeview
	$('#treeview2').treeview({
		color: "#428bca",
		//expandIcon: 'fa fa-plus',
		//collapseIcon: 'fa fa-minus',
		expandIcon: 'glyphicon glyphicon-chevron-right',
		collapseIcon: 'glyphicon glyphicon-chevron-down',
		data: getTree()
	})

	// https://openbase.com/js/bootstrap-treeview/documentation - List of Events
	.on('nodeExpanded', function(event, node) {
		console.log("nodeExpanded", node);
		var childrenNodes = _getChildren(node);
		console.log("nodeExpanded - childrenNodes", childrenNodes);
	    
	})
	.on('nodeCollapsed', function(event, node) {
		console.log("nodeCollapsed", node);
		var childrenNodes = _getChildren(node);
		console.log("nodeCollapsed - childrenNodes", childrenNodes);
	    
	})
	.on('nodeSelected', function(event, node) {
		console.log("nodeSelected", node);
		var childrenNodes = _getChildren(node);
		console.log("nodeSelected - childrenNodes", childrenNodes);
	});

	function _getChildren(node) {
		if (node.nodes === undefined) return [];
		var childrenNodes = node.nodes;
		node.nodes.forEach(function(n) {
			childrenNodes = childrenNodes.concat(_getChildren(n));
		});
		return childrenNodes;
	}

	function getTree() {
		//document.getElementById("storageData").val('1');
		
		//return JSON.parse(document.getElementById("storageData").innerHTML);
		
		
		var data = [
			{
				text: 'Parent 1',
				href: '#parent1',
				tags: ['4'],
				id: '1234',
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