package song.sts.jwtauth.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import song.sts.jwtauth.model.testModel;
import song.sts.jwtauth.model.response.StorageItemModel;
import song.sts.jwtauth.security.handler.AuthWorkHandler;

@Controller
public class PageController {

	@Autowired
	private AuthWorkHandler authWorkHandler;

	@GetMapping({ "", "/", "home", "index", "main" })
	public String home() {
		return "index";
	}

	@GetMapping("profile")
	public String profile() {
		return "profile/profile";
	}

	@GetMapping("storage")
	public String storage(Model model) {
		String drive, id, absolutePath;

		double totalSize, freeSize, useSize;

		File[] roots = File.listRoots();

		JSONArray jsonArrDrive = new JSONArray();

		for (File root : roots) {
			id = UUID.randomUUID().toString();
			drive = root.getAbsolutePath();
			absolutePath = root.getAbsolutePath();
			totalSize = root.getTotalSpace() / Math.pow(1024, 3);
			useSize = root.getUsableSpace() / Math.pow(1024, 3);
			freeSize = totalSize - useSize;

			JSONObject jsonObjDrive = new JSONObject();

			jsonObjDrive.put("id", id);
			jsonObjDrive.put("parentId", "");
			jsonObjDrive.put("text", drive);
			jsonObjDrive.put("absolutePath", absolutePath);
			jsonObjDrive.put("totalSize", totalSize);
			jsonObjDrive.put("useSize", useSize);
			jsonObjDrive.put("freeSize", freeSize);
			jsonObjDrive.put("isDrive", true);

			// List<StorageItemModel> storageItemModels = getDirInfo(id, drive);
			jsonObjDrive.put("nodes", new ArrayList<StorageItemModel>());
			jsonArrDrive.put(jsonObjDrive);
		}

		ArrayList<JSONObject> arrayJson = new ArrayList<JSONObject>();

		for (int k = 0; k < jsonArrDrive.length(); k++) {
			JSONObject tempJson = jsonArrDrive.getJSONObject(k);
			arrayJson.add(tempJson);
		}

		model.addAttribute("reponseData", arrayJson);

		return "storage/storage";
	}

	@GetMapping("csharp")
	public String csharp(Model model) {
		testModel testModel1 = testModel.builder().title("Title1").content("Content1").writeDate("WriteData1").build();
		testModel testModel2 = testModel.builder().title("Title2").content("Content2").writeDate("WriteData2").build();
		testModel testModel3 = testModel.builder().title("Title3").content("Content3").writeDate("WriteData3").build();
		testModel testModel4 = testModel.builder().title("Title4").content("Content4").writeDate("WriteData4").build();

		List<testModel> list = new ArrayList<testModel>();
		list.add(testModel1);
		list.add(testModel2);
		list.add(testModel3);
		list.add(testModel4);

		model.addAttribute("items", list);
		return "skill/csharp";
	}

	@GetMapping("skill/add")
	public String skillAdd() {
		return "skill/dataAddTemplate";
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("setting")
	public String setting(HttpServletRequest request, HttpServletResponse response) {
		if (!request.isUserInRole("ROLE_ADMIN")) {
			authWorkHandler.logoutDataDelete(request, response);
			return null;
		}

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserDetails userDetails = (UserDetails) principal;

		if (userDetails == null) {
			authWorkHandler.logoutDataDelete(request, response);
		}

		return "setting/setting";
	}

	@GetMapping("movie")
	public String movielist() {
		return "movie/list";
	}
}
