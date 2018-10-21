<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="ljh.util.*"%>
<%
      String newFilename=DateUtil.getRandom();
      FileUploadBean upload=new FileUploadBean();
      String dir = request.getRealPath("/upload");
      upload.setSavePath(dir);
      upload.saveAs(newFilename);
      upload.doUpload(request);
%>
<SCRIPT LANGUAGE="JavaScript">
alert("上传完成！");
location.href="upload1.html";
parent.filesDiv.style.display="inline";
parent.filesDiv.innerHTML="已上传文件！<a href='upload/<%=upload.getFilename()%>'><%=upload.getFilename()%></a>";
parent.frm.attachment.value="<%=upload.getFilename()%>";
//parent.uploadDiv.innerHTML="<iframe src='upload.html'  frameborder=0></iframe>";
</SCRIPT>

