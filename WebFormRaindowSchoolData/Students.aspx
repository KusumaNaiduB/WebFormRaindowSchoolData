<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="WebFormRaindowSchoolData.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 232px;
        height: 152px;
        position: absolute;
        top: 134px;
        left: 603px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>

    <asp:GridView ID="GridView1" runat="server" CssClass="auto-style6" style="z-index: 1" AutoGenerateColumns="False" DataKeyNames="Student_Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" ReadOnly="True" SortExpression="Student_Id" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Student_Address" HeaderText="Student_Address" SortExpression="Student_Address" />
            <asp:BoundField DataField="class_Id" HeaderText="class_Id" SortExpression="class_Id" />
        </Columns>
    </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:adminknaiduConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [Student_Id] = @original_Student_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [Student_Address] = @original_Student_Address AND (([class_Id] = @original_class_Id) OR ([class_Id] IS NULL AND @original_class_Id IS NULL))" InsertCommand="INSERT INTO [Students] ([Student_Id], [FirstName], [LastName], [Age], [Student_Address], [class_Id]) VALUES (@Student_Id, @FirstName, @LastName, @Age, @Student_Address, @class_Id)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:adminknaiduConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Student_Address] = @Student_Address, [class_Id] = @class_Id WHERE [Student_Id] = @original_Student_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [Student_Address] = @original_Student_Address AND (([class_Id] = @original_class_Id) OR ([class_Id] IS NULL AND @original_class_Id IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Student_Id" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Age" Type="Int32" />
                <asp:Parameter Name="original_Student_Address" Type="String" />
                <asp:Parameter Name="original_class_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Student_Id" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Student_Address" Type="String" />
                <asp:Parameter Name="class_Id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Student_Address" Type="String" />
                <asp:Parameter Name="class_Id" Type="Int32" />
                <asp:Parameter Name="original_Student_Id" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Age" Type="Int32" />
                <asp:Parameter Name="original_Student_Address" Type="String" />
                <asp:Parameter Name="original_class_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </center>
</asp:Content>
