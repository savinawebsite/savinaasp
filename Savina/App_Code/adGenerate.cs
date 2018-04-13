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

    public static String getSubCate1List(int mainCateID)
    {
        string html = "";
        try
        {
            var query = (from m in db.tb_CategorySub1
                         where m.MainCateID == mainCateID
                         select new
                         {
                             m.SubCate1ID,
                             m.SubCate1Name
                         });

            html += "<select id=\"sltSubCate1\" class=\"form-control\">";
            html += "<option value=\"-1\">Lựa chọn Sub Category 1</ option >";
            foreach (var item in query)
            {
                html += "<option value=\"" + item.SubCate1ID + "\">" + item.SubCate1Name + "</ option >";
            }
            html += "</select>";
        }

        catch (Exception exp)
        {
            html = "error";
        }
        return html;
    }

    public static String getSubCat1List()
    {
        string html = "";
        var query = (from m in db.tb_CategoryMain join
                     s1 in db.tb_CategorySub1 on m.MainCateID equals s1.MainCateID
                     select new {
                         s1.MainCateID,
                         s1.SubCate1ID,
                         s1.SubCate1Desc,
                         s1.SubCate1Name,
                         s1.IsDisplay,
                         s1.CreateDate,
                         s1.Sort,
                         m.MainCateName
                     });

        html += "<table id = \"datatable\" class=\"table table-striped table-bordered\">";
        html += "<thead>";
        html += "<tr>";
        html += "<th>Tên Sub-1</th>";
        html += "<th>Mổ tả nhanh</th>";
        html += "<th>Thuộc MainCategory</th>";
        html += "<th>Tình trạng</th>";
        html += "<th>Ngày tạo</th>";
        html += "<th>Thao tác</th>";
        html += "</tr>";
        html += "</thead>";
        html += "<tbody>";

        foreach (var item in query)
        {
            html += "<tr>";
            html += "<td>"+item.SubCate1Name+"</td>";
            html += "<td>" + item.SubCate1Desc + "</td>";
            html += "<td>" + item.MainCateName + "</td>";
            if(item.IsDisplay == true)
            {
                html += "<td>Enable</td>";
            }
            else
            {
                html += "<td>Disable</td>";
            }
            html += "<td>"+item.CreateDate+"</td>";
            html += "<td><a href = \"#\" class=\"btn btn-info btn-xs purple\" onclick=\"Edit(this, '" + item.SubCate1ID.ToString() + "','" + item.SubCate1Name.ToString() + "','" + item.SubCate1Desc.ToString() + "','" + item.Sort.ToString() + "','"+item.MainCateID.ToString()+"')\"><i class=\"fa fa-edit\"></i>&nbspEdit</a>";
            html += "<span><a href = \"#\" class=\"btn btn-danger btn-xs black\" onclick=\"Delete(this,'" + item.SubCate1ID.ToString() + "','" + item.SubCate1Name.ToString() + "')\"><i class=\"fa fa-edit\"></i>&nbspDelete</a></span></td>";
            html += "</tr>";
        }
        html += "</tbody>";
        html += "</table>";

        return html;
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

    public static String generateHTMLMainCateSelect(List<tb_CategoryMain> tbMainCate)
    {
        string html = "";
        html += "<select id=\"sltMainCate\" onchange=\"mainCateOnChange(this)\" class=\"form-control\">";
        html += "<option value=\"-1\">Lựa chọn Main Category</ option >";
        foreach (var item in tbMainCate)
        {
            html += "<option value=\""+ item.MainCateID +"\">"+ item.MainCateName +"</ option >";                         
        }
        html += "</select>";
        return html;
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
            html += "<td class=\" last\"><a href = \"#\" class=\"btn btn-info btn-xs\" onclick=\"Edit(this, '" + item.MainCateID.ToString() + "','" + item.MainCateName.ToString() + "','"+item.MainCateDesc.ToString()+"','"+item.Sort.ToString()+"')\"><i class=\"fa fa-edit\"></i> Edit</a></td>";
            html += "<td class=\" last\"><a href = \"#\" class=\"btn btn-danger btn-xs\" onclick=\"Delete(this,'"+item.MainCateID.ToString()+"','"+item.MainCateName.ToString()+"')\"><i class=\"fa fa-trash-o\"></i> Delete</a>";
            html += "</td>";
            html += "</tr>";
        }

        html += "</tbody>";
        html += "</table>";

        return html;
    }
}