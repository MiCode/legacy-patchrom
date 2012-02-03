.class public Lcom/android/settings/UNASettingList;
.super Landroid/app/ListActivity;
.source "UNASettingList.java"


# static fields
.field private static final mUNAItems:[Ljava/lang/String;


# instance fields
.field private mChargingDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/UNASettingList;->mUNAItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private showChargingDialog(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/UNASettingList;->mChargingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UNASettingList;->mChargingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 66
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080561

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080560

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08038c

    new-instance v2, Lcom/android/settings/UNASettingList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/UNASettingList$2;-><init>(Lcom/android/settings/UNASettingList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08038b

    new-instance v2, Lcom/android/settings/UNASettingList$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/UNASettingList$1;-><init>(Lcom/android/settings/UNASettingList;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UNASettingList;->mChargingDialog:Landroid/app/Dialog;

    .line 84
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "una_setting"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, default_una_setting_mode:I
    const-string v2, "UNASetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : Settings.System.UNA_SETTING : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v2, Lcom/android/settings/UNASettingList;->mUNAItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08055d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 35
    sget-object v2, Lcom/android/settings/UNASettingList;->mUNAItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08055e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 36
    sget-object v2, Lcom/android/settings/UNASettingList;->mUNAItems:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08055f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 39
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005e

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 40
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x109000f

    sget-object v4, Lcom/android/settings/UNASettingList;->mUNAItems:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 43
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 44
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 45
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 49
    packed-switch p3, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "una_setting"

    const/4 v2, 0x1

    sub-int v2, p3, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    const-string v0, "UNASetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->finish()V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/settings/UNASettingList;->showChargingDialog(I)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
