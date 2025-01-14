<%@ Page Language="C#" MasterPageFile="~/Cust/MasterPage.master" AutoEventWireup="true" CodeFile="Transfer.aspx.cs" Inherits="Customers_Transfer" Title="Untitled Page" %>

 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" Text="Transfer" 
            style="font-family: 'Times New Roman', Times, serif; text-align: center; margin-top: 0px;" 
            Width="100%" BackColor="#5D7B9D" ForeColor="White" Height="35px"></asp:Label>
        <br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="fund_trans_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
            Height="50px" Width="100%" oniteminserting="DetailsView1_ItemInserting" 
            AllowPaging="True" 
            onpageindexchanging="DetailsView1_PageIndexChanging">
            <Fields>
                <asp:BoundField DataField="fund_trans_id" HeaderText="fund_trans_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="fund_trans_id" />
                <asp:BoundField DataField="fund_trans_date_time" 
                    HeaderText="fund_trans_date_time" SortExpression="fund_trans_date_time" 
                    Visible="False" />
                <asp:TemplateField HeaderText="From Account" SortExpression="from_act_no">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("from_act_no") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource2" DataTextField="acc_cust_no" 
                            DataValueField="acc_cust_no" Height="23px" 
                            SelectedValue='<%# Bind("from_act_no") %>' Width="130px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" SelectCommand="SELECT     acc_cust_no
FROM         Accounts
WHERE     (cust_id =
                          (SELECT     cust_id
                             FROM         Accounts AS Accounts_1
                             WHERE     (acc_cust_no = @acc)))">
                            <SelectParameters>
                                <asp:CookieParameter CookieName="AccountID" Name="acc" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("from_act_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="To Account" SortExpression="to_act_no">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("to_act_no") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("to_act_no") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" 
                            MaximumValue="10000000" MinimumValue="0" Type="Currency">IS Currency</asp:RangeValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("to_act_no") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Amount" SortExpression="amt_transfered">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("amt_transfered") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("amt_transfered") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" 
                            MaximumValue="100000000" MinimumValue="0" ToolTip=" " Type="Currency">Currency</asp:RangeValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("amt_transfered") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Insert" onclientclick="return confirm('are you sure?');" 
                            Text="Insert"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
   <p>
        <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
        </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
            DeleteCommand="DELETE FROM [fund_trans] WHERE [fund_trans_id] = @original_fund_trans_id AND [fund_trans_date_time] = @original_fund_trans_date_time AND [from_act_no] = @original_from_act_no AND [to_act_no] = @original_to_act_no AND [amt_transfered] = @original_amt_transfered" 
            InsertCommand="INSERT INTO [fund_trans] ([fund_trans_date_time], [from_act_no], [to_act_no], [amt_transfered]) VALUES (@fund_trans_date_time, @from_act_no, @to_act_no, @amt_transfered)" 
            OldValuesParameterFormatString="original_{0}" 
            ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [fund_trans_id], [fund_trans_date_time], [from_act_no], [to_act_no], [amt_transfered] FROM [fund_trans]" 
            UpdateCommand="UPDATE [fund_trans] SET [fund_trans_date_time] = @fund_trans_date_time, [from_act_no] = @from_act_no, [to_act_no] = @to_act_no, [amt_transfered] = @amt_transfered WHERE [fund_trans_id] = @original_fund_trans_id AND [fund_trans_date_time] = @original_fund_trans_date_time AND [from_act_no] = @original_from_act_no AND [to_act_no] = @original_to_act_no AND [amt_transfered] = @original_amt_transfered">
            <DeleteParameters>
                <asp:Parameter Name="original_fund_trans_id" Type="Int32" />
                <asp:Parameter Name="original_fund_trans_date_time" Type="DateTime" />
                <asp:Parameter Name="original_from_act_no" Type="Int32" />
                <asp:Parameter Name="original_to_act_no" Type="Int32" />
                <asp:Parameter Name="original_amt_transfered" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fund_trans_date_time" Type="DateTime" />
                <asp:Parameter Name="from_act_no" Type="Int32" />
                <asp:Parameter Name="to_act_no" Type="Int32" />
                <asp:Parameter Name="amt_transfered" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fund_trans_date_time" Type="DateTime" />
                <asp:Parameter Name="from_act_no" Type="Int32" />
                <asp:Parameter Name="to_act_no" Type="Int32" />
                <asp:Parameter Name="amt_transfered" Type="Decimal" />
                <asp:Parameter Name="original_fund_trans_id" Type="Int32" />
                <asp:Parameter Name="original_fund_trans_date_time" Type="DateTime" />
                <asp:Parameter Name="original_from_act_no" Type="Int32" />
                <asp:Parameter Name="original_to_act_no" Type="Int32" />
                <asp:Parameter Name="original_amt_transfered" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
        <p>
            &nbsp;</p>
    </div>
    </asp:Content>

