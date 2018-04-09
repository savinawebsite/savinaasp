using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adGenerate
/// </summary>
public class adGenerate
{
   public static savinaEntities db = new savinaEntities();
    public adGenerate()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static List<tb_CategoryMain> getMainCateList()
    {
        //Get main category list
        var query = (from mc in db.tb_CategoryMain
                     select new
                     {
                         mc.MainCateID,
                         mc.MainCateName,
                         mc.MainCateDesc,
                         mc.IsDeleted,
                         mc.IsDisplay,
                         mc.CreateDate,
                         mc.Sort
                     });

        List<tb_CategoryMain> mainCateList = new List<tb_CategoryMain>();
        foreach (var item in query)
        {
            mainCateList.Add(new tb_CategoryMain()
            {
                MainCateID = item.MainCateID,
                MainCateName = item.MainCateName,
                MainCateDesc = item.MainCateDesc,
                IsDeleted = item.IsDeleted,
                IsDisplay = item.IsDisplay,
                CreateDate = item.CreateDate,
                Sort = item.Sort
            });
        }
        return mainCateList;
    }

    public static String generateHTMLMainCate(List<tb_CategoryMain> tbMainCate)
    {
        string html = "";

        html += "<table class=\"table table-striped jambo_table bulk_action\">";
        html += "<thead>";
        html += "<tr class=\"headings\">";
        html += "<th>";
        html += "<input type = \"checkbox\" id=\"check-all\" class=\"flat\">";
        html += "</th>";
        html += "<th class=\"column-title\">ID</th>";
        html += "<th class=\"column-title\">Tên Main Category</th>";
        html += "<th class=\"column-title\">Mô Tả nhanh</th>";
        html += "<th class=\"column-title\">Sort hiển thị</th>";
        html += "<th class=\"column-title\">Tình trạng</th>";
        html += "<th class=\"column-title\">Ngày tạo</th>";
        html += "<th class=\"column-title no-link last\"><span class=\"nobr\">Edit</span></th>";
        html += "<th class=\"column-title no-link last\"><span class=\"nobr\">Delete</span></th>";
        html += "<th class=\"bulk-actions\" colspan=\"7\">";
        html += "<a class=\"antoo\" style=\"color:#fff; font-weight:500;\">Bulk Actions( <span class=\"action-cnt\"> </span> ) <i class=\"fa fa-chevron-down\"></i></a>";
        html += "</th>";
        html += "</tr>";
        html += "</thead>";
        html += "<tbody>";

        foreach (var item in tbMainCate)
        {
            html += "<tr class=\"even pointer\">";
            html += "<td class=\"a-center\">";
            html += "<input type = \"checkbox\" class=\"flat\" name=\"table_records\">";
            html += "</td>";
            html += "<td class=\" \">"+item.MainCateID.ToString()+"</td>";
            html += "<td class=\" \">"+item.MainCateName.ToString()+"</td>";
            html += "<td class=\" \">"+item.MainCateDesc.ToString()+"</td>";
            html += "<td class=\" \">"+item.Sort.ToString()+"</td>";
            if (item.IsDisplay != null)
            {
                if(item.IsDisplay == true)
                {
                    html += "<td class=\" \">Enable</td>";
                }
                else
                {
                    html += "<td class=\" \">Disable</td>";
                }
            }
 
            html += "<td class=\" \">"+item.CreateDate.ToString()+"</td>";
            html += "<td class=\" last\"><a href = \"#\" class=\"btn btn-info btn-xs\" onclick=\"Edit($(this))\"><i class=\"fa fa-edit\"></i> Edit</a></td>";
            html += "<td class=\" last\"><a href = \"#\" class=\"btn btn-danger btn-xs\" onclick=\"Delete($(this))\"><i class=\"fa fa-trash-o\"></i> Delete</a>";
            html += "</td>";
            html += "</tr>";
        }

        html += "</tbody>";
        html += "</table>";

        return html;
    }
}