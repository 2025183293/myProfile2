package com.yourpackage;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Get the ID from the URL parameter
        String idToDelete = request.getParameter("studentID");
        
        // 2. Retrieve the global list from the application context
        List<ProfileBean> profiles = (List<ProfileBean>) getServletContext().getAttribute("allProfiles");

        if (profiles != null && idToDelete != null) {
            // 3. Find and remove the student with the matching ID
            profiles.removeIf(p -> p.getStudentID().equals(idToDelete));
            
            // 4. Update the application context with the modified list
            getServletContext().setAttribute("allProfiles", profiles);
        }

        // 5. Redirect back to the view page to see the updated list
        response.sendRedirect("viewProfiles.jsp");
    }
}