package com.security.acl.security;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.access.hierarchicalroles.RoleHierarchy;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;

import javax.annotation.Resource;

/**
 * A custom PermissionEvaluator implementation that uses a Map to
 * check whether a domain Object and access level exists for a particular user. 
 * This also uses RoleHiearchy to retrieve the highest role possible for the user.
 */
public class CustomPermissionEvaluator implements PermissionEvaluator {
        
	protected static Logger logger = Logger.getLogger("security");

	
	private Map permissionsMap;
	
	
	private RoleHierarchy roleHierarchy;
	
	/**
	 * Evaluates whether the user has permission by delegating to 
	 * hasPermission(String role, Object permission, Object domain)
	 */
	public boolean hasPermission(Authentication authentication,
			Object targetDomainObject, Object permission) {
		System.out.println("Evaluating expression using hasPermission signature #1");
		
		System.out.println("Retrieving user's highest role");
		String role = getRole(authentication);

		System.out.println("****************");
		System.out.println("role: " + role);
		System.out.println("targetDomainObject: " + targetDomainObject);
		System.out.println("permission: " + permission);
		System.out.println("****************");
	
		// Check the type of object
		System.out.println("User is trying to access the object: " + targetDomainObject);

		System.out.println("Check if user has permission");
		// Delegate to another hasPermission signature
		return hasPermission(role, permission, targetDomainObject);
	}

	/**
	 * Another hasPermission signature. We will not implement this.
	 */
	public boolean hasPermission(Authentication authentication,
			Serializable targetId, String targetType, Object permission) {
		System.out.println("Evaluating expression using hasPermission signature #2");

		return false;
	}

	/**
	 * Retrieves the user's highest role
	 */
	private String getRole(Authentication authentication) {
		String highestRole = null;
		
		try {
			Collection<GrantedAuthority> auths = roleHierarchy.getReachableGrantedAuthorities(authentication.getAuthorities());
			for (GrantedAuthority auth: auths) {
				highestRole = auth.getAuthority();
				break;
			}
			System.out.println("Highest role hiearchy: " + roleHierarchy.getReachableGrantedAuthorities(authentication.getAuthorities()));
			
		} catch (Exception e) {
			System.out.println("No authorities assigned");
		}
		
		return highestRole;
	}
	
	/**
	 * Evaluates whether the user has permission
	 */
	private Boolean hasPermission(String role, Object permission, Object domain) {
		System.out.println("Check if role exists: " + role);
		if ( permissionsMap.containsKey(role) ) {
			System.out.println("Role exists: " + role);
			
			// Retrieve userPermission object
			Permission userPermission = (Permission) permissionsMap.get(role);
			
			// Check if domain exists in Map
			System.out.println("Check if domain exists: " + domain.getClass().getName());
			if ( userPermission.getObjects().containsKey(domain.getClass().getName())){
				System.out.println("Domain exists: " + domain.getClass().getName());

				// Loop the internal list and see if the class' full name matches
				System.out.println("Check if permission exists: " + permission);
				for (String action: userPermission.getObjects().get(domain.getClass().getName()) ) {
					if (action.equals(permission)) {
						System.out.println("Permission exists: " + action);
						System.out.println("Permission Granted!");
						return true;
					}
				}
			}
		}
		
		// By default, do not give permission
		System.out.println("Permission Denied!");
		return false;
	}

	

	public Map getPermissionsMap() {
		return permissionsMap;
	}

	public void setPermissionsMap(Map permissionsMap) {
		this.permissionsMap = permissionsMap;
	}

	public RoleHierarchy getRoleHierarchy() {
		return roleHierarchy;
	}

	public void setRoleHierarchy(RoleHierarchy roleHierarchy) {
		this.roleHierarchy = roleHierarchy;
	}
	
	
	
	
}
