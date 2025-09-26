package project_27_8_vidu1.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;

@Entity
@Table(name = "Category")
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cate_id",nullable = false)
    private int cateid;

    @Column(name = "cate_name",nullable = false)
    private String catename;

    @Column(name="icons",length = 255)
    private String icon;
	// Constructor mặc định
    public Category() {
    }

    // Constructor với tất cả các thuộc tính
    public Category(int cateid, String catename, String icon) {
        this.cateid = cateid;
        this.catename = catename;
        this.icon = icon;
    }

    // Getters
    public int getCateid() {
        return cateid;
    }

    public String getCatename() {
        return catename;
    }

    public String getIcon() {
        return icon;
    }

    // Setters
    public void setCateid(int cateid) {
        this.cateid = cateid;
    }

    public void setCatename(String catename) {
        this.catename = catename;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
}
