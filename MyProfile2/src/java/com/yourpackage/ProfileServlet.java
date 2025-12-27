package com.yourpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    
    // Static list to act as our temporary database
    private static List<ProfileBean> profileList = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Capture all form data into the Bean
        ProfileBean profile = new ProfileBean();
        profile.setName(request.getParameter("name"));
        profile.setStudentID(request.getParameter("studentID"));
        profile.setProgram(request.getParameter("program"));
        profile.setEmail(request.getParameter("email"));
        profile.setHobbies(request.getParameter("hobbies"));
        profile.setIntro(request.getParameter("intro"));

        // 2. Add to our list
        profileList.add(profile);

        // 3. Update the Application Scope so JSP can see it
        getServletContext().setAttribute("allProfiles", profileList);

        // 4. Forward to the success/display page
        request.setAttribute("userProfile", profile);
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }
}