<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="WebFormRaindowSchoolData.Teachers" %>
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

    <asp:GridView ID="GridView1" runat="server" CssClass="auto-style6" style="z-index: 1" AutoGenerateColumns="False" DataKeyNames="TeacherId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" />
            <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher_Name" SortExpression="Teacher_Name" />
            <asp:BoundField DataField="TSubject" HeaderText="TSubject" SortExpression="TSubject" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
        </Columns>
    </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:adminknaiduConnectionString %>" DeleteCommand="DELETE FROM [Teachers] WHERE [TeacherId] = @original_TeacherId AND [Teacher_Name] = @original_Teacher_Name AND [TSubject] = @original_TSubject AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL))" InsertCommand="INSERT INTO [Teachers] ([TeacherId], [Teacher_Name], [TSubject], [Experience]) VALUES (@TeacherId, @Teacher_Name, @TSubject, @Experience)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Teachers]" UpdateCommand="UPDATE [Teachers] SET [Teacher_Name] = @Teacher_Name, [TSubject] = @TSubject, [Experience] = @Experience WHERE [TeacherId] = @original_TeacherId AND [Teacher_Name] = @original_Teacher_Name AND [TSubject] = @original_TSubject AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TeacherId" Type="Int32" />
                <asp:Parameter Name="original_Teacher_Name" Type="String" />
                <asp:Parameter Name="original_TSubject" Type="String" />
                <asp:Parameter Name="original_Experience" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TeacherId" Type="Int32" />
                <asp:Parameter Name="Teacher_Name" Type="String" />
                <asp:Parameter Name="TSubject" Type="String" />
                <asp:Parameter Name="Experience" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Teacher_Name" Type="String" />
                <asp:Parameter Name="TSubject" Type="String" />
                <asp:Parameter Name="Experience" Type="Int32" />
                <asp:Parameter Name="original_TeacherId" Type="Int32" />
                <asp:Parameter Name="original_Teacher_Name" Type="String" />
                <asp:Parameter Name="original_TSubject" Type="String" />
                <asp:Parameter Name="original_Experience" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </center>
</asp:Content>
