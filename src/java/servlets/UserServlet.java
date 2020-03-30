/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entitys.Account;
import entitys.Company;
import entitys.History;
import entitys.User;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sessions.AccountFacade;
import sessions.CompanyFacade;
import sessions.HistoryFacade;
import sessions.UserFacade;


/**
 *
 * @author LARISSA
 */
@WebServlet(name = "UserServlet", urlPatterns = {
    "/showTakeOnAccount",
    "/takeOnAccount",
    "/showPaymentAccount",
    "/paymentOnAccount",
})
public class UserServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    @EJB
    private AccountFacade accountFacade;
    @EJB
    private CompanyFacade companyFacade;
    @EJB
    private HistoryFacade historyFacade;
    @EJB
    private UserFacade userFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession(false);
        if (session == null) {
            request.setAttribute("info", "У Вас нет прав,войдите!");
            request.getRequestDispatcher("/WEB-INF/showLogin.jsp")
                    .forward(request, response);
            return;
        }
        User user = (User) session.getAttribute("user");
        if(user == null) {
            request.setAttribute("info", "У Вас нет прав,войдите!");
            request.getRequestDispatcher("/WEB-INF/showLogin.jsp")
                    .forward(request, response);
            return;
        }
       
        String path = request.getServletPath();
        switch (path) {
            case "/showTakeOnAccount":
                List<Account> listAccounts = accountFacade.findAll();
                List<Company> listCompanies = companyFacade.findAll();
                request.setAttribute("listAccounts", listAccounts);
                request.setAttribute("listCompanies", listCompanies);
                request.getRequestDispatcher("/WEB-INF/showTakeOnAccount.jsp")
                        .forward(request, response);
                break;
            case "/takeOnAccount":
                String accountId = request.getParameter("accountId");
                String companyId = request.getParameter("companyId");
                Account account = accountFacade.find(Long.parseLong(accountId));
                Company company = companyFacade.find(Long.parseLong(companyId));
                History history = new History();
                history.setAccount(account);
                history.setCompany(company);
                history.setTakeOn(new Date());
                historyFacade.create(history);
                request.setAttribute("info",
                        "Счёт \""
                        + account.getNumber()
                        + "\" оплачен компанией: "
                        + company.getName()
                        + " " + company.getForm()
                );
                request.getRequestDispatcher("/WEB-INF/showTakeOnAccount.jsp")
                        .forward(request, response);
                break;
            case "/showPaymentAccount":
                List<History> listHistories = historyFacade.findTookAccount();
                request.setAttribute("listHistories", listHistories);
                request.getRequestDispatcher("/WEB-INF/showPaymentAccount.jsp")
                        .forward(request, response);
                break;
            case "/paymentOnAccount":
                String historyId = request.getParameter("historyId");
                history = historyFacade.find(Long.parseLong(historyId));
                history.setPaymentDate(new Date());
                historyFacade.edit(history);
                request.setAttribute("info", "Счёт \""
                        + history.getAccount().getTitle()
                        + "\" оплачен"
                );
                request.getRequestDispatcher("/showPaymentAccount")
                        .forward(request, response);
                break;

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}