.class public Lcom/android/phone/ReferenceCountryListActivity;
.super Landroid/app/ListActivity;
.source "ReferenceCountryListActivity.java"


# static fields
.field private static final CHANGE_COUNTRY_ID:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final HELP_MENU_ID:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ReferenceCountryListActivity"

#the value of this static final field might be set in the static constructor
.field private static final VDBG:Z = false

.field private static final VIEW_DETAIL_ID:I = 0x2


# instance fields
.field private mCtryNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/AssistedDialingUtil$CtryListNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/ReferenceCountryListActivity;->DBG:Z

    .line 53
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/ReferenceCountryListActivity;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 196
    const-string v0, "ReferenceCountryListActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method private updateSettingDb(I)V
    .locals 5
    .parameter "mcc"

    .prologue
    .line 172
    invoke-static {p1}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 173
    .local v0, entryInfo:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 176
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "ref_country_name"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    const-string v2, "ref_country_mcc"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    const-string v2, "ref_country_code"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    const-string v2, "ref_country_idd"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    const-string v2, "ref_country_ndd"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    const-string v2, "ref_country_area_code"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    const-string v2, "ref_country_mdn_len"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cur_country_updated_by_user"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "com.android.phone.assist.detail.ro"

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 138
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    .line 139
    .local v3, node:Lcom/android/phone/AssistedDialingUtil$CtryListNode;
    iget v2, v3, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    .line 141
    .local v2, mcc:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    .line 144
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/phone/ReferenceCountryListActivity;->updateSettingDb(I)V

    move v5, v7

    .line 145
    goto :goto_0

    .line 148
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, cuntryDetail:Landroid/content/Intent;
    const-string v5, "com.android.phone.assist.detail.mcc"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ref_country_mcc"

    invoke-static {v5, v6, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 154
    .local v4, refMccCode:I
    iget v5, v3, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    if-ne v4, v5, :cond_0

    .line 155
    const-string v5, "com.android.phone.assist.detail.ro"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    :goto_1
    const-class v5, Lcom/android/phone/ReferenceCountryDetail;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/phone/ReferenceCountryListActivity;->startActivity(Landroid/content/Intent;)V

    move v5, v7

    .line 161
    goto :goto_0

    .line 157
    :cond_0
    const-string v5, "com.android.phone.assist.detail.ro"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ReferenceCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/phone/AssistedDialingUtil;->createCtryNameList(Landroid/content/res/Resources;Ljava/util/ArrayList;)V

    .line 69
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030001

    iget-object v2, p0, Lcom/android/phone/ReferenceCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 71
    .local v0, mAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/phone/AssistedDialingUtil$CtryListNode;>;"
    invoke-virtual {p0, v0}, Lcom/android/phone/ReferenceCountryListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ReferenceCountryListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 112
    const v4, 0x7f0b03bd

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 115
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ref_country_mcc"

    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 119
    .local v3, refMccCode:I
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 120
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    .line 123
    .local v2, node:Lcom/android/phone/AssistedDialingUtil$CtryListNode;
    iget v4, v2, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    if-eq v3, v4, :cond_0

    .line 124
    const/4 v4, 0x1

    const v5, 0x7f0b03bf

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 129
    :cond_0
    const/4 v4, 0x2

    const v5, 0x7f0b03be

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 130
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 98
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 106
    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03bb

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 81
    const v0, 0x7f0b03ae

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 82
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 89
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/phone/ReferenceCountryListActivity;->showDialog(I)V

    move v0, v1

    .line 90
    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
