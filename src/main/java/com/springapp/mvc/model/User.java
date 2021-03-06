package com.springapp.mvc.model;

import org.hibernate.validator.constraints.Email;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Set;


@Entity
@Table(name="User")
public class User {
	@Id
	@GeneratedValue
	@Column(name="userId")
	private long userId;

	//@NotEmpty
	@Column(name="name")
	@Size(min = 5, max = 20)
	private String name;

	//@NotEmpty
	@Email
	@Column(name="emailAddress")
	private String emailAddress;

	//@NotEmpty
	@Size(min = 6, max = 15)
	@Column(name="loginId")
	private String loginId;

	//@NotEmpty
	@Size(min = 6, max = 256)
	@Column(name="password")
	private String password;

	@Column(name="imageLocation")
	private String imageLocation;

	//@NotEmpty
	@Column(name="status")
    private String status;

	@ManyToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@JoinTable(name = "User_ROLE",
			joinColumns = { @JoinColumn(name = "userId") },
			inverseJoinColumns = { @JoinColumn(name = "Id") })
	private Set<Role> role;

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public long getUserId() {
		return userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String userName) {
		this.name = userName;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Role> getRole() {
		return role;
	}

	public void setRole(Set<Role> role) {
		this.role = role;
	}

	public String getImageLocation() {
		return imageLocation;
	}

	public void setImageLocation(String imageLocation) {
		this.imageLocation = imageLocation;
	}

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", name='" + name + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", loginId='" + loginId + '\'' +
                ", password='" + password + '\'' +
                ", imageLocation='" + imageLocation + '\'' +
                ", status='" + status + '\'' +
                ", role=" + role +
                '}';
    }
}
