package org.apache.jsp.admin.chucnang;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ThemDM_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- PAGE CONTENT WRAPPER -->\n");
      out.write("<div class=\"page-content-wrap\">\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-12\">\n");
      out.write("\n");
      out.write("            <form class=\"form-horizontal\">\n");
      out.write("                <div class=\"panel panel-default\">\n");
      out.write("                    <div class=\"panel-heading\">\n");
      out.write("                        <h3 class=\"panel-title\"><strong>One Column</strong> Layout</h3>\n");
      out.write("                        <ul class=\"panel-controls\">\n");
      out.write("                            <li><a href=\"#\" class=\"panel-remove\"><span class=\"fa fa-times\"></span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"panel-body\">\n");
      out.write("                        <p>This is non libero bibendum, scelerisque arcu id, placerat nunc. Integer ullamcorper rutrum dui eget porta. Fusce enim dui, pulvinar a augue nec, dapibus hendrerit mauris. Praesent efficitur, elit non convallis faucibus, enim sapien suscipit mi, sit amet fringilla felis arcu id sem. Phasellus semper felis in odio convallis, et venenatis nisl posuere. Morbi non aliquet magna, a consectetur risus. Vivamus quis tellus eros. Nulla sagittis nisi sit amet orci consectetur laoreet. Vivamus volutpat erat ac vulputate laoreet. Phasellus eu ipsum massa.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"panel-body\">                                                                        \n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-md-3 col-xs-12 control-label\">Text Field</label>\n");
      out.write("                            <div class=\"col-md-6 col-xs-12\">                                            \n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <span class=\"input-group-addon\"><span class=\"fa fa-pencil\"></span></span>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\"/>\n");
      out.write("                                </div>                                            \n");
      out.write("                                <span class=\"help-block\">This is sample of text field</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">                                        \n");
      out.write("                            <label class=\"col-md-3 col-xs-12 control-label\">Password</label>\n");
      out.write("                            <div class=\"col-md-6 col-xs-12\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <span class=\"input-group-addon\"><span class=\"fa fa-unlock-alt\"></span></span>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\"/>\n");
      out.write("                                </div>            \n");
      out.write("                                <span class=\"help-block\">Password field sample</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">                                        \n");
      out.write("                            <label class=\"col-md-3 col-xs-12 control-label\">Datepicker</label>\n");
      out.write("                            <div class=\"col-md-6 col-xs-12\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <span class=\"input-group-addon\"><span class=\"fa fa-calendar\"></span></span>\n");
      out.write("                                    <input type=\"text\" class=\"form-control datepicker\" value=\"2015-11-01\">                                            \n");
      out.write("                                </div>\n");
      out.write("                                <span class=\"help-block\">Click on input field to get datepicker</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-md-3 col-xs-12 control-label\">Textarea</label>\n");
      out.write("                            <div class=\"col-md-6 col-xs-12\">                                            \n");
      out.write("                                <textarea class=\"form-control\" rows=\"5\"></textarea>\n");
      out.write("                                <span class=\"help-block\">Default textarea field</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-md-3 col-xs-12 control-label\">Tags</label>\n");
      out.write("                            <div class=\"col-md-6 col-xs-12\">                                                                                            \n");
      out.write("                                <input type=\"text\" class=\"tagsinput\" value=\"First,Second,Third\"/>\n");
      out.write("                                <span class=\"help-block\">Default textarea field</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-md-3 col-xs-12 control-label\">Select</label>\n");
      out.write("                            <div class=\"col-md-6 col-xs-12\">                                                                                            \n");
      out.write("                                <select class=\"form-control select\">\n");
      out.write("                                    <option>Option 1</option>\n");
      out.write("                                    <option>Option 2</option>\n");
      out.write("                                    <option>Option 3</option>\n");
      out.write("                                    <option>Option 4</option>\n");
      out.write("                                    <option>Option 5</option>\n");
      out.write("                                </select>\n");
      out.write("                                <span class=\"help-block\">Select box example</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-md-3 col-xs-12 control-label\">File</label>\n");
      out.write("                            <div class=\"col-md-6 col-xs-12\">                                                                                                                                        \n");
      out.write("                                <input type=\"file\" class=\"fileinput btn-primary\" name=\"filename\" id=\"filename\" title=\"Browse file\"/>\n");
      out.write("                                <span class=\"help-block\">Input type file</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-md-3 col-xs-12 control-label\">Checkbox</label>\n");
      out.write("                            <div class=\"col-md-6 col-xs-12\">                                                                                                                                        \n");
      out.write("                                <label class=\"check\"><input type=\"checkbox\" class=\"icheckbox\" checked=\"checked\"/> Checkbox title</label>\n");
      out.write("                                <span class=\"help-block\">Checkbox sample, easy to use</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"panel-footer\">\n");
      out.write("                        <button class=\"btn btn-default\">Clear Form</button>                                    \n");
      out.write("                        <button class=\"btn btn-primary pull-right\">Submit</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>                    \n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<!-- END PAGE CONTENT WRAPPER -->\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
