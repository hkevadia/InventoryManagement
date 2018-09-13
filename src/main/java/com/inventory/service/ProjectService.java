package com.inventory.service;

import java.util.List;

import com.inventory.model.Project;

public interface ProjectService {

	public void addProject(Project project);

	public List<Project> getAllProjects(String specs, String orderBy);

	public void deleteProject(Integer projectId);

	public Project getProjectById(int projectId);

	public Project updateProjectById(Project projectId);
	
	public String managerIdUnderHimById(String category, int himId);

}
