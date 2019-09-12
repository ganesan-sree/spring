package com.task.auth.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class StringUtil {


	public static String getEncryptedPassword(String plainText) {
		StringBuilder sb = new StringBuilder();
		try {
			MessageDigest message = MessageDigest.getInstance("MD5");
			message.update(plainText.getBytes());
			byte[] encodedString = message.digest();
			for (int i = 0; i < encodedString.length; i++) {
				if ((encodedString[i] & 0xff) < 0x10) {
					sb.append("0");
				}
				sb.append(Long.toString(encodedString[i] & 0xff, 16));
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		System.out.println("password "+sb.toString());
		return sb.toString();
	}
	
	
	public static String getSHAEncryptedPassword(String plainText) {

		MessageDigest md=null;
		try {
			md = MessageDigest.getInstance("SHA");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		byte[] dataBytes = new byte[1024];

		int nread = 0;

		md.update("admin".getBytes());

		byte[] mdbytes = md.digest();

		// convert the byte to hex format method 1
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < mdbytes.length; i++) {
			sb.append(Integer.toString((mdbytes[i] & 0xff) + 0x100, 16)
					.substring(1));
		}

		System.out.println("Digest(in hex format):: " + sb.toString());

		// convert the byte to hex format method 2
		StringBuffer hexString = new StringBuffer();
		for (int i = 0; i < mdbytes.length; i++) {
			String hex = Integer.toHexString(0xff & mdbytes[i]);
			if (hex.length() == 1)
				hexString.append('0');
			hexString.append(hex);
		}
		System.out.println("Digest(in hex format):: " + hexString.toString());
		return hexString.toString();
	}

}
