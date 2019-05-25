package com.action;

import java.util.List;

import com.bean.Category;
import com.bean.Field;
import com.dao.CategoryDAO;
import com.dao.FieldDAO;

public class FieldAction {
private List<Field> fields;
private FieldDAO fielddao = new FieldDAO();
private List<Category> categories;
private CategoryDAO categorydao = new CategoryDAO();

public String display() throws Exception{
	fields = fielddao.getAllField();
	categories = categorydao.getAllCategory();
	return "success";
}

public List<Field> getFields() {
	return fields;
}

public void setFields(List<Field> fields) {
	this.fields = fields;
}

public FieldDAO getFielddao() {
	return fielddao;
}

public void setFielddao(FieldDAO fielddao) {
	this.fielddao = fielddao;
}

public List<Category> getCategories() {
	return categories;
}

public void setCategories(List<Category> categories) {
	this.categories = categories;
}

public CategoryDAO getCategorydao() {
	return categorydao;
}

public void setCategorydao(CategoryDAO categorydao) {
	this.categorydao = categorydao;
}

}
