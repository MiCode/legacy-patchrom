.class public Lcom/motorola/blur/quickupload/OnlineAlbumSettings;
.super Landroid/app/ListActivity;
.source "OnlineAlbumSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static BLUR_ID:Ljava/lang/String; = null

.field private static EMAIL_ADDRESS:Ljava/lang/String; = null

.field private static final GET_EMAIL_ADDR:I = 0x1

.field private static INITIALIZED:Ljava/lang/String; = null

.field private static SELECTION:Ljava/lang/String; = null

.field private static final SETTINGS_DIALOG:I = 0x1

.field private static final SUB_ACTIVITY_ADD_ACCOUNT:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private emailAddress:Ljava/lang/String;

.field private mAddAccountView:Landroid/widget/TextView;

.field private mCountPCS:I

.field private mSelectedItem:I

.field private mSocialEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private m_uploadType:Ljava/lang/String;

.field private m_vCachedAPSSProviders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onlineAlbumAdapter:Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "OnlineAlbumSettings"

    sput-object v0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "INITIALIZED"

    sput-object v0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->INITIALIZED:Ljava/lang/String;

    .line 36
    const-string v0, "SELECTION"

    sput-object v0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->SELECTION:Ljava/lang/String;

    .line 37
    const-string v0, "EMAIL_ADDRESS"

    sput-object v0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->EMAIL_ADDRESS:Ljava/lang/String;

    .line 38
    const-string v0, "BLUR_ID"

    sput-object v0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->BLUR_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 51
    iput v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mCountPCS:I

    .line 52
    iput v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSelectedItem:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_vCachedAPSSProviders:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSocialEntryList:Ljava/util/ArrayList;

    return-void
.end method

.method private createSettingsDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 104
    const/4 v3, 0x0

    .line 106
    .local v3, strTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_uploadType:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const v4, 0x7f0c0160

    invoke-virtual {p0, v4}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    :goto_0
    new-instance v4, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;

    const v5, 0x7f030031

    iget-object v6, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSocialEntryList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->onlineAlbumAdapter:Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;

    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    iget-object v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->onlineAlbumAdapter:Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 122
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03002e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mAddAccountView:Landroid/widget/TextView;

    .line 123
    iget v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSelectedItem:I

    invoke-virtual {p0, v4}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->setSelectedEntry(I)V

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 126
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mAddAccountView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 127
    iget-object v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mAddAccountView:Landroid/widget/TextView;

    new-instance v5, Lcom/motorola/blur/quickupload/OnlineAlbumSettings$1;

    invoke-direct {v5, p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings$1;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-object v1

    .line 109
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f0c015f

    invoke-virtual {p0, v4}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private initSocialShareServices()V
    .locals 9

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->updateActivePhotoServices(Landroid/content/ContentResolver;)V

    .line 150
    invoke-static {}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->getActivePhotoSharingServiceCount()I

    move-result v5

    iput v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mCountPCS:I

    .line 152
    iget-object v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSocialEntryList:Ljava/util/ArrayList;

    .line 153
    .local v4, socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 154
    new-instance v5, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    const v6, 0x7f0c00cd

    invoke-virtual {p0, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mCountPCS:I

    if-eqz v5, :cond_2

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, providerIndeces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_uploadType:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    .line 165
    :goto_0
    const/4 v0, 0x0

    .line 167
    .local v0, apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 168
    .local v3, providerIndex:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->getService(I)Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    new-instance v5, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    iget-object v6, v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    const/4 v7, 0x1

    iget v8, v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    invoke-direct {v5, v6, v7, v8}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    .end local v0           #apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #providerIndex:Ljava/lang/Integer;
    :cond_1
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    goto :goto_0

    .line 174
    .end local v2           #providerIndeces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v5, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    const v6, 0x7f0c0169

    invoke-virtual {p0, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method private loadPreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 244
    iput v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSelectedItem:I

    .line 246
    const/4 v3, 0x0

    .line 247
    .local v3, onlineAlbumPreferences:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_uploadType:Ljava/lang/String;

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 248
    const-string v7, "onlineAlbumVideoSettingsPrefs"

    invoke-virtual {p0, v7, v9}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 253
    :goto_0
    sget-object v7, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->INITIALIZED:Ljava/lang/String;

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 255
    .local v2, initialized:Z
    if-eqz v2, :cond_0

    .line 257
    sget-object v7, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->SELECTION:Ljava/lang/String;

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 258
    .local v4, savedSelection:I
    iget-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSocialEntryList:Ljava/util/ArrayList;

    .line 259
    .local v5, socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 261
    .local v6, socialListSize:I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    .line 263
    sget-object v7, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->EMAIL_ADDRESS:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    .line 265
    iget-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 267
    sub-int v7, v6, v11

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    iget-object v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->setEmailAddr(Ljava/lang/String;)V

    .line 268
    sub-int v7, v6, v11

    iput v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSelectedItem:I

    .line 292
    .end local v4           #savedSelection:I
    .end local v5           #socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    .end local v6           #socialListSize:I
    :cond_0
    :goto_1
    return-void

    .line 250
    .end local v2           #initialized:Z
    :cond_1
    const-string v7, "onlineAlbumSettingsPrefs"

    invoke-virtual {p0, v7, v9}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    goto :goto_0

    .line 271
    .restart local v2       #initialized:Z
    .restart local v4       #savedSelection:I
    .restart local v5       #socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    .restart local v6       #socialListSize:I
    :cond_2
    if-eqz v4, :cond_0

    .line 272
    invoke-static {}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->getActivePhotoSharingServiceCount()I

    move-result v7

    iput v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mCountPCS:I

    .line 273
    iget v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mCountPCS:I

    if-eqz v7, :cond_0

    .line 276
    sget-object v7, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->BLUR_ID:Ljava/lang/String;

    invoke-interface {v3, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 279
    .local v0, blur_id:I
    if-eq v0, v10, :cond_0

    .line 280
    const/4 v1, 0x0

    .local v1, ind:I
    :goto_2
    if-ge v1, v6, :cond_0

    .line 282
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    invoke-virtual {v7}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->getBlurID()I

    move-result v7

    if-ne v7, v0, :cond_3

    .line 284
    iput v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSelectedItem:I

    goto :goto_1

    .line 280
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private savePreferences()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 296
    const/4 v3, 0x0

    .line 297
    .local v3, onlineAlbumPreferences:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_uploadType:Ljava/lang/String;

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 298
    const-string v7, "onlineAlbumVideoSettingsPrefs"

    invoke-virtual {p0, v7, v9}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 303
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 304
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSocialEntryList:Ljava/util/ArrayList;

    .line 305
    .local v4, socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 310
    .local v5, socialListSize:I
    const/4 v2, 0x0

    .local v2, ind:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 312
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    .line 313
    .local v1, entry:Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;
    invoke-virtual {v1}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 315
    invoke-virtual {v1}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->getType()I

    move-result v6

    .line 317
    .local v6, type:I
    sget-object v7, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->SELECTION:Ljava/lang/String;

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 319
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 321
    sget-object v7, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->EMAIL_ADDRESS:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->getEmailAddr()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    .end local v6           #type:I
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #entry:Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;
    .end local v2           #ind:I
    .end local v4           #socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    .end local v5           #socialListSize:I
    :cond_1
    const-string v7, "onlineAlbumSettingsPrefs"

    invoke-virtual {p0, v7, v9}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    goto :goto_0

    .line 323
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #entry:Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;
    .restart local v2       #ind:I
    .restart local v4       #socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    .restart local v5       #socialListSize:I
    .restart local v6       #type:I
    :cond_2
    if-ne v6, v10, :cond_0

    .line 325
    sget-object v7, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->BLUR_ID:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->getBlurID()I

    move-result v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 333
    .end local v1           #entry:Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;
    .end local v6           #type:I
    :cond_3
    sget-object v7, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->INITIALIZED:Ljava/lang/String;

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    return-void
.end method


# virtual methods
.method public addAccount()V
    .locals 9

    .prologue
    .line 365
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v2, intentAddAccount:Landroid/content/Intent;
    sget-object v7, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 367
    const-string v7, "android.intent.action.INSERT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->ePhotoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    .line 370
    .local v5, type:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;
    iget-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_uploadType:Ljava/lang/String;

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 371
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eVideoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    .line 374
    :cond_0
    invoke-static {v5}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->getPSProviders(Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;)Ljava/util/Vector;

    move-result-object v6

    .line 375
    .local v6, vPSP:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 377
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v3, v7, [J

    .line 378
    .local v3, psps:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 379
    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v3, v1

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_1
    const-string v7, "provider_id"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 386
    .end local v1           #i:I
    .end local v3           #psps:[J
    :cond_2
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v7}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_1
    sget-object v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->ePhotoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    invoke-static {v7}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->getAPSProviders(Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;)Ljava/util/Vector;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_vCachedAPSSProviders:Ljava/util/Vector;

    .line 395
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, a:Landroid/content/ActivityNotFoundException;
    const v7, 0x7f0c016a

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 389
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 196
    const-string v2, "EMAIL_ADDRESS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSocialEntryList:Ljava/util/ArrayList;

    .line 203
    .local v0, socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 205
    .local v1, socialListSize:I
    sub-int v2, v1, v3

    invoke-virtual {p0, v2}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->setSelectedEntry(I)V

    .line 206
    sub-int v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    iget-object v3, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->setEmailAddr(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->savePreferences()V

    .line 213
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->finish()V

    goto :goto_0

    .line 221
    .end local v0           #socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    .end local v1           #socialListSize:I
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->initSocialShareServices()V

    .line 235
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->loadPreferences()V

    .line 236
    iget v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSelectedItem:I

    invoke-virtual {p0, v2}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->setSelectedEntry(I)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialogInterface"

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->finish()V

    .line 443
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "inteface"
    .parameter "selection"

    .prologue
    .line 399
    invoke-virtual {p0, p2}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->setSelectedEntry(I)V

    .line 401
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSocialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->finish()V

    .line 439
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSocialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    invoke-virtual {v1}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 420
    const-string v1, "EXISTING_EMAIL"

    iget-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    :cond_2
    const-class v1, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 429
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 437
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "uploadType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_uploadType:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_uploadType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 67
    const-string v1, "image"

    iput-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->m_uploadType:Ljava/lang/String;

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->initSocialShareServices()V

    .line 71
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->loadPreferences()V

    .line 73
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "nDialogId"
    .parameter "bundle"

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->createSettingsDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 451
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 452
    const/4 v0, 0x1

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 85
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->savePreferences()V

    .line 86
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->showDialog(I)V

    .line 80
    return-void
.end method

.method public setSelectedEntry(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, v:Landroid/view/View;
    iget-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->mSocialEntryList:Ljava/util/ArrayList;

    .line 344
    .local v2, socialEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    .line 346
    .local v0, entry:Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;
    invoke-virtual {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->isSelected()Z

    move-result v5

    if-ne v5, v6, :cond_0

    .line 348
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->setSelected(Z)V

    .line 354
    .end local v0           #entry:Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 355
    .local v3, socialListSize:I
    if-ltz p1, :cond_2

    if-ge p1, v3, :cond_2

    .line 356
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    invoke-virtual {v5, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->setSelected(Z)V

    .line 360
    :cond_2
    iget-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->onlineAlbumAdapter:Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;

    invoke-virtual {v5}, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->notifyDataSetChanged()V

    .line 361
    return-void
.end method
