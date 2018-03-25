﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class tb_About
{
    public int ID_aboutarticle { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Contents { get; set; }
    public string Image { get; set; }
    public string Status { get; set; }
    public string Kind { get; set; }
    public Nullable<System.DateTime> Create_Date { get; set; }
    public Nullable<int> Update_By { get; set; }
    public Nullable<System.DateTime> Update_Date { get; set; }
    public string UrlFriendLy { get; set; }
    public string MetaTitle { get; set; }
    public string MetaDescription { get; set; }
    public string MetaKeyWord { get; set; }
    public string MetaImage { get; set; }
}

public partial class tb_Access
{
    public int ID_localaccount { get; set; }
    public Nullable<int> Access_Count { get; set; }
}

public partial class tb_CategoryMain
{
    public int ID_MainCategory { get; set; }
    public string Category_Name { get; set; }
    public Nullable<int> Sort { get; set; }
}

public partial class tb_CategorySub1
{
    public int ID_CategorySub1 { get; set; }
    public string CategorySub1_Name { get; set; }
    public Nullable<int> ID_MainCategory { get; set; }
    public Nullable<bool> Status { get; set; }
}

public partial class tb_ContactUs
{
    public int id { get; set; }
    public string First_Name { get; set; }
    public string Last_Name { get; set; }
    public string Email { get; set; }
    public string Cell_phone { get; set; }
    public string Home_phone { get; set; }
    public string Status { get; set; }
    public string Finished { get; set; }
    public string Read_New { get; set; }
    public string Message_content { get; set; }
    public Nullable<System.DateTime> Create_Date { get; set; }
    public Nullable<System.DateTime> Read_Date { get; set; }
    public Nullable<System.DateTime> Finish_Date { get; set; }
}

public partial class tb_Counteronline
{
    public int id { get; set; }
    public Nullable<int> TotalUserOnline { get; set; }
    public Nullable<int> TotalOnline { get; set; }
    public Nullable<int> TotalClick { get; set; }
    public string Flag { get; set; }
}

public partial class tb_Customer
{
    public int ID_Customer { get; set; }
    public string Customer_code { get; set; }
    public string First_Name { get; set; }
    public string Last_Name { get; set; }
    public string User_Name { get; set; }
    public string Password { get; set; }
    public Nullable<System.DateTime> Birthday { get; set; }
    public Nullable<bool> Gender { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }
    public string Address { get; set; }
    public string Status { get; set; }
    public string Avatar { get; set; }
    public Nullable<System.DateTime> Create_Date { get; set; }
}

public partial class tb_LocalAccount
{
    public int ID_localaccount { get; set; }
    public string Account_code { get; set; }
    public string First_Name { get; set; }
    public string Last_Name { get; set; }
    public string User_Name { get; set; }
    public string Password { get; set; }
    public Nullable<System.DateTime> Birthday { get; set; }
    public Nullable<bool> Gender { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }
    public string Address { get; set; }
    public string Status { get; set; }
    public Nullable<int> ID_permission { get; set; }
    public string Avatar { get; set; }
    public string Create_date { get; set; }
}

public partial class tb_Order
{
    public int ID_Order { get; set; }
    public Nullable<int> ID_Customer { get; set; }
    public string Order_code { get; set; }
    public string Order_type { get; set; }
    public Nullable<double> Discount_amount { get; set; }
    public Nullable<System.DateTime> Create_Date { get; set; }
    public Nullable<System.DateTime> pickup_Time { get; set; }
    public Nullable<System.DateTime> return_Time { get; set; }
    public Nullable<int> quantity { get; set; }
    public Nullable<int> ID_ServiceSelection { get; set; }
    public Nullable<int> ID_DeliverySelection { get; set; }
    public Nullable<int> ID_DocumentSelection { get; set; }
    public Nullable<double> Total_deposit_amount { get; set; }
    public Nullable<double> Total_order_value { get; set; }
    public Nullable<byte> order_status { get; set; }
    public Nullable<int> updated_by { get; set; }
    public Nullable<System.DateTime> updated_date { get; set; }
    public Nullable<bool> updating_status { get; set; }
}

public partial class tb_Permission
{
    public int ID_permission { get; set; }
    public string Permission_name { get; set; }
    public string Permission_description { get; set; }
}

public partial class tb_promotion
{
    public int id_promotion { get; set; }
    public Nullable<double> Discount_by_percentage { get; set; }
    public Nullable<double> Discount_by_price { get; set; }
    public Nullable<System.DateTime> Create_Date { get; set; }
    public Nullable<System.DateTime> From_Date { get; set; }
    public Nullable<System.DateTime> To_Date { get; set; }
    public string Status { get; set; }
    public string Kind_promotion { get; set; }
}

public partial class tb_SiteMap
{
    public int ID_sitemap { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Contents { get; set; }
    public string Image { get; set; }
    public string Status { get; set; }
    public string Kind { get; set; }
    public Nullable<System.DateTime> CreateDate { get; set; }
    public Nullable<int> UpdateBy { get; set; }
    public Nullable<System.DateTime> UpdateDate { get; set; }
    public string UrlFriendLy { get; set; }
    public string MetaTitle { get; set; }
    public string MetaDescription { get; set; }
    public string MetaKeyWord { get; set; }
    public string MetaImage { get; set; }
}

public partial class tb_WishList
{
    public int id { get; set; }
    public Nullable<int> ID_Product { get; set; }
    public Nullable<int> ID_Customer { get; set; }
    public Nullable<System.DateTime> Create_Date { get; set; }
}
