$(document).ready(function() {

    var userrole = $('#span-userrole').text();
    var rolename = userrole.toLowerCase().replace('role_', '');
    
    $('#span-userrole').text(" / " + rolename[0].toUpperCase() + rolename.slice(1));
    $("#span-userrole").css("visibility","visible");
    $("#span-username").css("visibility","visible");

    let menulist = JSON.parse(document.getElementById("menulist").innerHTML);

    $("#container-menulist").empty();
    $("#container-menulist").append('');

    var html = "";
    
    for (category in menulist) {
        html = html + '<div class="sb-sidenav-menu-heading">' + menulist[category].categoryTitle + '</div>';

        var oneDeptMenus = menulist[category].menuOneDepts;

        for(oneDeptkey in oneDeptMenus) {
            var twoDeptMenus = oneDeptMenus[oneDeptkey].menuTwoDepts;
            var oneDeptMenuId = oneDeptMenus[oneDeptkey].menuOneDeptid;
            var oneDeptMenuUrl = oneDeptMenus[oneDeptkey].menuOneDeptUrl;
            var oneDeptMenuIcon = oneDeptMenus[oneDeptkey].menuOneDeptIcon;
            var oneDeptMenuTitle = oneDeptMenus[oneDeptkey].menuOneDeptTitle;
            var oneDeptMenuAria = oneDeptMenuTitle + '_' + oneDeptMenuId;
           
            if(twoDeptMenus.length === 0) {
                let oneMenuUrl = 'javascript:void(0)';

                if(oneDeptMenuUrl.trim() !== '') {
                    oneMenuUrl = oneDeptMenuUrl + "/" + oneDeptMenuId + "/1";
                }

                html = html + 
                    `<a class="nav-link" href="` + oneMenuUrl + `">
                        <div class="sb-nav-link-icon">
                            <i class="` + oneDeptMenuIcon + `"></i>
                        </div> 
                        ` + oneDeptMenuTitle + `
                    </a>`;
            }
            else {
                html = html + 
                    `<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#` + oneDeptMenuAria + `" aria-expanded="false"
                        aria-controls="` +  oneDeptMenuAria + `">
                        <div class="sb-nav-link-icon">
                            <i class="` + oneDeptMenuIcon + `"></i>
                        </div>` + oneDeptMenuTitle + `
                        <div class="sb-sidenav-collapse-arrow">
                            <i class="fas fa-angle-down"></i>
                        </div>
                    </a>`;
            }

            var isInsertThreeDeptMenu = false;
            var isThreeDeptMenuExist = false;

            for(twoDeptkey in twoDeptMenus) {
                var threeDeptMenus = twoDeptMenus[twoDeptkey].menuThreeDepts;
                var twoDeptMenuId = twoDeptMenus[twoDeptkey].menuTwoDeptid;
                var twoDeptMenuUrl = twoDeptMenus[twoDeptkey].menuTwoDeptUrl;
                var twoDeptMenuTitle = twoDeptMenus[twoDeptkey].menuTwoDeptTitle;
                var twoDeptMenuAria = twoDeptMenuTitle + '_' + twoDeptMenuId;

                if(threeDeptMenus.length === 0) {
                    let twoMenuUrl = 'javascript:void(0)';

                    if(twoDeptMenuUrl.trim() !== '') {
                        twoMenuUrl = twoDeptMenuUrl + "/" + twoDeptMenuId + "/2";
                    }

                    html = html + 
                        `<div class="collapse" id="` + oneDeptMenuAria + `" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="` +  twoMenuUrl + `">
                                    ` +  twoDeptMenuTitle + `
                                </a> 
                            </nav>
                        </div>`;
                }
                else {
                    var threeHtml = '';
                    isThreeDeptMenuExist = true;

                    for(threeDeptkey in threeDeptMenus) {
                        let threeMenuUrl = 'javascript:void(0)';

                        if(threeDeptMenus[threeDeptkey].menuThreeDeptUrl.trim() !== '') {
                            threeMenuUrl = threeDeptMenus[threeDeptkey].menuThreeDeptUrl + "/" + threeDeptMenus[threeDeptkey].menuThreeDeptid + "/3";
                        }

                        threeHtml = threeHtml + 
                            `<a class="nav-link" href="` + threeMenuUrl + `">` + 
                                threeDeptMenus[threeDeptkey].menuThreeDeptTitle + 
                            `</a>`;
                    }
                    
                    if(!isInsertThreeDeptMenu) {
                        html = html + `
                            <div class="collapse" id="` +  oneDeptMenuAria + `" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">`;

                        isInsertThreeDeptMenu = true;
                    } 
                    
                    html = html + `
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#` + twoDeptMenuAria + 
                        `" aria-expanded="false" aria-controls="` + twoDeptMenuAria + `">
                            ` + twoDeptMenuTitle + `
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="` + twoDeptMenuAria+ `" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                            <nav class="sb-sidenav-menu-nested nav">
                            ` + threeHtml + `
                            </nav>
                        </div>
                    `;
                }
            }

            if(isThreeDeptMenuExist) {
                html = html + `
                        </nav>
                    </div>
                `;

                isInsertThreeDeptMenu = false;
            }
        }
	}

    $("#container-menulist").append(html);
});
