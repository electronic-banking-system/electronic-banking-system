<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Advertis.aspx.cs" Inherits="Admin_Advertis" Title="Untitled Page" %>
 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right">
       
  
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Adve_Id" 
            DataSourceID="SqlDataSource1" DefaultMode="Insert" 
            onitemcommand="FormView1_ItemCommand" oniteminserted="FormView1_ItemInserted" 
            oniteminserting="FormView1_ItemInserting" Width="100%">
            <EditItemTemplate>
                Adve_Id:
                <asp:Label ID="Adve_IdLabel1" runat="server" Text='<%# Eval("Adve_Id") %>' />
                <br />
                Adve_Name:
                <asp:TextBox ID="Adve_NameTextBox" runat="server" 
                    Text='<%# Bind("Adve_Name") %>' />
                <br />
                Adve_Phote:
                <asp:TextBox ID="Adve_PhoteTextBox" runat="server" 
                    Text='<%# Bind("Adve_Phote") %>' />
                <br />
                Adve_Thumb:
                <asp:TextBox ID="Adve_ThumbTextBox" runat="server" 
                    Text='<%# Bind("Adve_Thumb") %>' />
                <br />
                Postion_Id:
                <asp:TextBox ID="Postion_IdTextBox" runat="server" 
                    Text='<%# Bind("Postion_Id") %>' />
                <br />
                Adve_Date:
                <asp:TextBox ID="Adve_DateTextBox" runat="server" 
                    Text='<%# Bind("Adve_Date") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="style1000005">
                    <tr>
                        <td align="center" bgcolor="#5D7B9D" colspan="3" height="30">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" 
                                Text="&#1575;&#1604;&#1575;&#1593;&#1604;&#1575;&#1606;&#1575;&#1578;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span lang="ar-sa">&#1606;&#1589; &#1575;&#1604;&#1575;&#1593;&#1604;&#1575;&#1606;</span>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="Adve_NameTextBox0" runat="server" 
                                Text='<%# Bind("Adve_Name") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="Adve_NameTextBox0" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <span lang="ar-sa">&#1575;&#1604;&#1589;&#1608;&#1585;&#1577;</span></td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="&#1575;&#1590;&#1575;&#1601;&#1577;" ValidationGroup="v1" 
                                Font-Size="Medium" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="&#1575;&#1604;&#1594;&#1575;&#1569;" 
                                Font-Size="Medium" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                &nbsp;&nbsp;
            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="Adve_Id" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="100%" Font-Size="Medium">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    CancelText="&#1575;&#1604;&#1594;&#1575;&#1569;" DeleteText="&#1581;&#1584;&#1601;" EditText="&#1578;&#1581;&#1585;&#1610;&#1585;" UpdateText="&#1578;&#1593;&#1583;&#1610;&#1604;" />
                <asp:BoundField DataField="Adve_Id" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1575;&#1593;&#1604;&#1575;&#1606;" ReadOnly="True" 
                    SortExpression="Adve_Id" />
                <asp:BoundField DataField="Adve_Name" HeaderText="&#1575;&#1587;&#1605; &#1575;&#1604;&#1575;&#1593;&#1604;&#1575;&#1606;" 
                    SortExpression="Adve_Name" />
                <asp:TemplateField HeaderText="&#1589;&#1608;&#1585;&#1577; &#1575;&#1604;&#1575;&#1593;&#1604;&#1575;&#1606;" SortExpression="Adve_Phote">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Adve_Phote") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image3" runat="server" Height="48px" ImageAlign="Middle" 
                            ImageUrl='<%# Eval("Adve_Phote", "~/{0}") %>' Width="122px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Adve_Date" DataFormatString="{0:d}" 
                    HeaderText="&#1578;&#1575;&#1585;&#1610;&#1582; &#1575;&#1604;&#1575;&#1593;&#1604;&#1575;&#1606;" SortExpression="Adve_Date" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Advertis] WHERE [Adve_Id] = @Adve_Id" 
            InsertCommand="INSERT INTO Advertis(Adve_Name, Adve_Phote, Adve_Thumb, Postion_Id, Adve_Date) VALUES (@Adve_Name, @Adve_Phote, @Adve_Thumb, @Postion_Id, @Adve_Date)" 
            ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
            SelectCommand="SELECT Adve_Id, Adve_Name, Adve_Phote, Adve_Thumb, Postion_Id, Adve_Date FROM Advertis" 
            UpdateCommand="UPDATE [Advertis] SET [Adve_Name] = @Adve_Name, [Adve_Phote] = @Adve_Phote, [Adve_Thumb] = @Adve_Thumb, [Postion_Id] = @Postion_Id, [Adve_Date] = @Adve_Date WHERE [Adve_Id] = @Adve_Id">
            <DeleteParameters>
                <asp:Parameter Name="Adve_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Adve_Name" Type="String" />
                <asp:Parameter Name="Adve_Phote" Type="String" />
                <asp:Parameter Name="Adve_Thumb" Type="String" />
                <asp:Parameter Name="Postion_Id" Type="String" />
                <asp:Parameter Name="Adve_Date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Adve_Name" Type="String" />
                <asp:Parameter Name="Adve_Phote" Type="String" />
                <asp:Parameter Name="Adve_Thumb" Type="String" />
                <asp:Parameter Name="Postion_Id" Type="String" />
                <asp:Parameter Name="Adve_Date" Type="DateTime" />
                <asp:Parameter Name="Adve_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
</div> 

</asp:Content>

