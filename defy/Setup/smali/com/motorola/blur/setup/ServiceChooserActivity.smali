.class public Lcom/motorola/blur/setup/ServiceChooserActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "ServiceChooserActivity.java"

# interfaces
.implements Lcom/motorola/blur/setup/AccountRemovalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;,
        Lcom/motorola/blur/setup/ServiceChooserActivity$ProviderProjection;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_SELECTION:Ljava/lang/String; = "provider_id != %d "

.field private static final ACCOUNT_EXISTS_WITH_PROVIDER_SELECTION:Ljava/lang/String; = "provider_id=?"

.field private static final ADD_ACCOUNT_ACTION:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field private static final AND:Ljava/lang/String; = " AND "

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final NO_ACCOUNT:J = -0x1L

.field private static final NO_AUTHENTICATOR_MSG:I = 0x1

.field private static final NUM_BUTTONS_LANDSCAPE:I = 0x5

.field private static final NUM_BUTTONS_PORTRAIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SetupSCAChooser"

.field private static final UI_SORT_ORDER:Ljava/lang/String; = "ui_order ASC"

.field private static final UNKNOWN_PROVIDER:J = -0x1L

.field private static final UNSUPPORTED_ACCOUNT_TYPE_MSG:I = 0x2

.field private static VVM_ACCOUNT_AUTHENTICATOR_TYPE:Ljava/lang/String;

.field private static sConnectedGalleryName:Ljava/lang/String;

.field private static final sDefaultTextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormattedPrettyName:Ljava/lang/String;

.field private static sGalleryName:Ljava/lang/String;

.field private static sPicasaId:J

.field private static sYouTubeId:J


# instance fields
.field mAccountsCursor:Landroid/database/Cursor;

.field private mAddSingleAccount:Z

.field private mBackground:I

.field private mBlurAccountNumber:I

.field private mBound:Z

.field private mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mClicked:Z

.field mCursor:Landroid/database/Cursor;

.field private mDeletedAccount:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

.field mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

.field private mErrorCode:I

.field private mExistingAccount:Ljava/lang/Boolean;

.field private mGridItemWidth:I

.field private mGridViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mProviderListSpecified:Z

.field mSelection:Ljava/lang/StringBuilder;

.field private mService:Landroid/os/IBinder;

.field mServiceClickListener:Landroid/view/View$OnClickListener;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field mServiceFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mServiceLongClickListener:Landroid/view/View$OnLongClickListener;

.field mServiceTouchListener:Landroid/view/View$OnTouchListener;

.field private mSetupShowOneList:Z

.field private mSingleAccountProviderIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 118
    sput-object v3, Lcom/motorola/blur/setup/ServiceChooserActivity;->ID_PROJECTION:[Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "email"

    const v2, 0x7f0c0132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "activesync"

    const v2, 0x7f0c0131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "google"

    const v2, 0x7f0c0136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "yahoo"

    const v2, 0x7f0c0135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sput-object v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->sDefaultTextMap:Ljava/util/HashMap;

    .line 141
    const-string v1, "com.motorola.Visual Voice Mail"

    sput-object v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->VVM_ACCOUNT_AUTHENTICATOR_TYPE:Ljava/lang/String;

    .line 148
    sput-object v3, Lcom/motorola/blur/setup/ServiceChooserActivity;->sFormattedPrettyName:Ljava/lang/String;

    .line 149
    sput-object v3, Lcom/motorola/blur/setup/ServiceChooserActivity;->sGalleryName:Ljava/lang/String;

    .line 150
    sput-object v3, Lcom/motorola/blur/setup/ServiceChooserActivity;->sConnectedGalleryName:Ljava/lang/String;

    .line 151
    sput-wide v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sPicasaId:J

    .line 152
    sput-wide v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sYouTubeId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 119
    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSingleAccountProviderIds:Ljava/util/ArrayList;

    .line 132
    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCursor:Landroid/database/Cursor;

    .line 133
    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    .line 134
    iput-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    .line 135
    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    .line 136
    iput v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBackground:I

    .line 137
    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mDeletedAccount:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    .line 138
    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    .line 139
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mExistingAccount:Ljava/lang/Boolean;

    .line 140
    iput v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBlurAccountNumber:I

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridItemWidth:I

    .line 143
    iput-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mProviderListSpecified:Z

    .line 144
    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mService:Landroid/os/IBinder;

    .line 145
    iput-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBound:Z

    .line 146
    iput-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mClicked:Z

    .line 147
    iput-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSetupShowOneList:Z

    .line 157
    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    .line 158
    iput v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mErrorCode:I

    .line 240
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceChooserActivity$1;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceChooserActivity$2;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 273
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceChooserActivity$3;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 288
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceChooserActivity$4;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceClickListener:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$5;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceChooserActivity$5;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 313
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$6;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceChooserActivity$6;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 323
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$7;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceChooserActivity$7;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 84
    sget-wide v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->sPicasaId:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 84
    sget-wide v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->sYouTubeId:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/motorola/blur/setup/ServiceChooserActivity;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mDeletedAccount:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/motorola/blur/setup/ServiceChooserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/motorola/blur/setup/ServiceChooserActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->goSkipOrFinish(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/blur/setup/ServiceChooserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->launchNextScreen()V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/blur/setup/ServiceChooserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSetupShowOneList:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/motorola/blur/setup/ServiceChooserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/motorola/blur/setup/ServiceChooserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->launchSettingsScreen(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->sFormattedPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->sGalleryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/ServiceChooserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->setupTables()V

    return-void
.end method

.method static synthetic access$502(Lcom/motorola/blur/setup/ServiceChooserActivity;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/motorola/blur/setup/ServiceChooserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBlurAccountNumber:I

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/blur/setup/ServiceChooserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->showServiceInfoDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/blur/setup/ServiceChooserActivity;Ljava/lang/String;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->showDeleteAccountDialog(Ljava/lang/String;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V

    return-void
.end method

.method private buildTable(III)V
    .locals 8
    .parameter "tableId"
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableLayout;

    .line 576
    .local v5, table:Landroid/widget/TableLayout;
    if-nez v5, :cond_1

    .line 607
    :cond_0
    return-void

    .line 579
    :cond_1
    invoke-virtual {v5}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 580
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 582
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getNumColumns()I

    move-result v2

    .line 583
    .local v2, numCols:I
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 584
    .local v3, row:Landroid/widget/TableRow;
    move v0, v2

    .line 586
    .local v0, col:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_4

    .line 587
    if-ne v0, v2, :cond_2

    .line 588
    const/4 v0, 0x0

    .line 589
    new-instance v3, Landroid/widget/TableRow;

    .end local v3           #row:Landroid/widget/TableRow;
    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 590
    .restart local v3       #row:Landroid/widget/TableRow;
    invoke-virtual {v5, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 592
    :cond_2
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->createTableView(I)Landroid/view/View;

    move-result-object v4

    .line 593
    .local v4, serviceView:Landroid/view/View;
    iget-object v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-boolean v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSetupShowOneList:Z

    if-nez v7, :cond_3

    .line 595
    iget-object v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 597
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 598
    add-int/lit8 v0, v0, 0x1

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    .end local v4           #serviceView:Landroid/view/View;
    :cond_4
    :goto_1
    if-ge v0, v2, :cond_0

    .line 602
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 603
    .local v6, v:Landroid/view/View;
    iget v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridItemWidth:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 604
    invoke-virtual {v3, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 605
    add-int/lit8 v0, v0, 0x1

    .line 606
    goto :goto_1
.end method

.method private createAccountLists()V
    .locals 15

    .prologue
    .line 748
    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 749
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    .line 752
    :cond_0
    iget-object v9, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCursor:Landroid/database/Cursor;

    .line 753
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 754
    const/4 v14, 0x0

    .line 755
    .local v14, provider:Ljava/lang/String;
    const/4 v8, 0x0

    .line 756
    .local v8, accountType:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 757
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 758
    const-string v2, "blur"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 762
    invoke-static {p0, v14}, Lcom/motorola/blur/provider/GAMSHelper;->composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 763
    if-eqz v8, :cond_1

    .line 769
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const/4 v6, 0x4

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;-><init>(Ljava/lang/String;JJZ)V

    .line 772
    .local v0, gridObj:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    invoke-virtual {v0, v8}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->setAccountType(Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 769
    .end local v0           #gridObj:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 777
    .end local v8           #accountType:Ljava/lang/String;
    .end local v14           #provider:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBlurAccountNumber:I

    .line 778
    iget-boolean v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mProviderListSpecified:Z

    if-eqz v2, :cond_5

    .line 804
    :cond_4
    return-void

    .line 783
    :cond_5
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    .line 784
    .local v7, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v11

    .line 785
    .local v11, descList:[Landroid/accounts/AuthenticatorDescription;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    array-length v2, v11

    if-ge v12, v2, :cond_4

    .line 786
    aget-object v10, v11, v12

    .line 787
    .local v10, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v2, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->isHidden(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 785
    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 793
    :cond_7
    iget-object v2, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v3, "com.motorola.blur.provider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 794
    invoke-direct {p0, v10}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getGAMSAccountDisplayName(Landroid/accounts/AuthenticatorDescription;)Ljava/lang/String;

    move-result-object v1

    .line 795
    .local v1, displayName:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getGAMSAccountIcon(Landroid/accounts/AuthenticatorDescription;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 797
    .local v13, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;-><init>(Ljava/lang/String;JJZ)V

    .line 799
    .restart local v0       #gridObj:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    invoke-virtual {v0, v13}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    iget-object v2, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->setAccountType(Ljava/lang/String;)V

    .line 801
    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private static determineAccountAllowed(Landroid/database/Cursor;Landroid/content/ContentResolver;J)Z
    .locals 9
    .parameter "cursor"
    .parameter "cr"
    .parameter "providerId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1166
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1167
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/setup/ServiceChooserActivity;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "provider_id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1172
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1174
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1182
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 1178
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    move v0, v8

    .line 1182
    goto :goto_0

    .line 1178
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private drawScreen()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 517
    const v5, 0x7f03003c

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->setContentView(I)V

    .line 518
    iget v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBackground:I

    if-lez v5, :cond_0

    .line 519
    const v5, 0x7f0b00e5

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 520
    .local v4, view:Landroid/view/View;
    iget v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBackground:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 524
    .end local v4           #view:Landroid/view/View;
    :cond_0
    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 525
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v5, 0x7f0c00ae

    const v6, 0x7f0b0001

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 526
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 527
    invoke-virtual {v0, v7}, Lcom/motorola/android/widget/ActionBar;->setVisibility(I)V

    .line 529
    iget-boolean v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSetupShowOneList:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mProviderListSpecified:Z

    if-eqz v5, :cond_2

    .line 530
    :cond_1
    const v5, 0x7f0b00e7

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 531
    const v5, 0x7f0b00e9

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 532
    const v5, 0x7f0b00e3

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 533
    .local v3, textView:Landroid/widget/TextView;
    const v5, 0x7f0c002f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 534
    const v5, 0x7f0b00e6

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 535
    .restart local v3       #textView:Landroid/widget/TextView;
    const v5, 0x7f0c0031

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 538
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_2
    iget-boolean v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    if-nez v5, :cond_3

    .line 539
    invoke-virtual {v0, v8}, Lcom/motorola/android/widget/ActionBar;->setVisibility(I)V

    .line 540
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    sget-boolean v5, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSilentRegistrationRequired:Z

    if-nez v5, :cond_3

    .line 542
    const v5, 0x7f0b0029

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/setup/ProgressBadge;

    .line 543
    .local v1, badge:Lcom/motorola/blur/setup/ProgressBadge;
    invoke-virtual {v1, v8}, Lcom/motorola/blur/setup/ProgressBadge;->setVisibility(I)V

    .line 547
    .end local v1           #badge:Lcom/motorola/blur/setup/ProgressBadge;
    :cond_3
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->setupTables()V

    .line 548
    return-void
.end method

.method public static final getDefaultProviderIcon(Ljava/lang/String;)I
    .locals 2
    .parameter "provider"

    .prologue
    .line 344
    invoke-static {p0}, Lcom/motorola/blur/setup/DefaultIconHelper;->getBundledProviderIcon(Ljava/lang/String;)I

    move-result v0

    .line 345
    .local v0, resId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 346
    const v1, 0x3020169

    .line 348
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private getDisplayNameFromType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 827
    move-object v0, p1

    .line 828
    .local v0, displayName:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 829
    .local v1, sep:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 830
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    :cond_0
    :goto_0
    return-object v0

    .line 834
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getGAMSAccountDisplayName(Landroid/accounts/AuthenticatorDescription;)Ljava/lang/String;
    .locals 5
    .parameter "desc"

    .prologue
    .line 816
    :try_start_0
    iget-object v3, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/motorola/blur/setup/ServiceChooserActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 817
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 818
    .local v2, res:Landroid/content/res/Resources;
    iget v3, p1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 822
    .end local v0           #authContext:Landroid/content/Context;
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v3

    .line 819
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 820
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getDisplayNameFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 821
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 822
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getDisplayNameFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getGAMSAccountIcon(Landroid/accounts/AuthenticatorDescription;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "desc"

    .prologue
    .line 842
    :try_start_0
    iget-object v2, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/motorola/blur/setup/ServiceChooserActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 843
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 844
    .local v1, res:Landroid/content/res/Resources;
    iget v2, p1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 847
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 845
    :catch_0
    move-exception v2

    .line 847
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNumColumns()I
    .locals 9

    .prologue
    .line 894
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 896
    .local v6, windowManager:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 897
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 898
    .local v2, height:I
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 899
    .local v5, width:I
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x308005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 900
    .local v3, leftPadding:I
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x308005d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 901
    .local v4, rightPadding:I
    sub-int v7, v5, v3

    sub-int v5, v7, v4

    .line 903
    if-le v5, v2, :cond_0

    const/4 v7, 0x5

    move v0, v7

    .line 904
    .local v0, cols:I
    :goto_0
    div-int v7, v5, v0

    iput v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridItemWidth:I

    .line 905
    return v0

    .line 903
    .end local v0           #cols:I
    :cond_0
    const/4 v7, 0x3

    move v0, v7

    goto :goto_0
.end method

.method private getProviderIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "providerId"
    .parameter "size"

    .prologue
    .line 1320
    new-instance v4, Lcom/motorola/blur/util/cache/ProviderIconCache$ProviderIconKey;

    invoke-direct {v4}, Lcom/motorola/blur/util/cache/ProviderIconCache$ProviderIconKey;-><init>()V

    .line 1321
    .local v4, key:Lcom/motorola/blur/util/cache/ProviderIconCache$ProviderIconKey;
    iput-wide p1, v4, Lcom/motorola/blur/util/cache/ProviderIconCache$ProviderIconKey;->id:J

    .line 1322
    iput-object p3, v4, Lcom/motorola/blur/util/cache/ProviderIconCache$ProviderIconKey;->size:Ljava/lang/String;

    .line 1323
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    invoke-virtual {v5, v4}, Lcom/motorola/blur/util/cache/ProviderIconCache;->hasValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1324
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    invoke-virtual {v5, v4}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v5, p0

    .line 1353
    :goto_0
    return-object v5

    .line 1327
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1328
    .local v2, content:Landroid/content/ContentResolver;
    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_FILE_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1329
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1330
    const-string v5, "image"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1331
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1333
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1334
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1336
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 1337
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1345
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1346
    :try_start_2
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    invoke-virtual {v5, v4, v1}, Lcom/motorola/blur/util/cache/ProviderIconCache;->setValue(Lcom/motorola/blur/util/cache/ProviderIconCache$ProviderIconKey;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v5, v1

    .line 1348
    goto :goto_0

    .line 1349
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 1353
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    invoke-virtual {v5, v4}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v5, p0

    goto :goto_0

    .line 1340
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local p0
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private goSkipOrFinish(Z)V
    .locals 14
    .parameter "bFirstTime"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    const-string v12, "SetupSCAChooser"

    .line 353
    if-ne p1, v11, :cond_0

    .line 354
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v4

    .line 355
    .local v4, provisioned:Z
    if-nez v4, :cond_1

    .line 356
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v3, intent:Landroid/content/Intent;
    const-class v7, Lcom/motorola/blur/setup/SkipSetupActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ServiceChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #provisioned:Z
    :cond_0
    :goto_0
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceChooserActivity;->setResult(I)V

    .line 392
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->finish()V

    .line 393
    return-void

    .line 360
    .restart local v4       #provisioned:Z
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 362
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "SetupSCAChooser"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "going to force sync engine!"

    aput-object v8, v7, v13

    invoke-static {v12, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :try_start_0
    iget-object v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mService:Landroid/os/IBinder;

    if-eqz v7, :cond_4

    .line 365
    iget-object v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mService:Landroid/os/IBinder;

    invoke-static {v7}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    move-result-object v0

    .line 366
    .local v0, engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    const-string v7, "BlurContactsSyncHandler"

    invoke-interface {v0, v7}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->forceSync(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0           #engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    :goto_1
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->getInstance()Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;

    move-result-object v1

    .line 374
    .local v1, engineProxy:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
    invoke-virtual {v1, p0}, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->getProxy(Landroid/content/Context;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;

    move-result-object v5

    .line 375
    .local v5, proxy:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;
    invoke-interface {v5}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;->resumeSyncing()Z

    move-result v6

    .line 376
    .local v6, resumed:Z
    if-nez v6, :cond_2

    .line 380
    const-string v7, "SetupSCAChooser"

    const-string v7, "Failed to resume Sync"

    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_2
    const-class v7, Lcom/motorola/blur/setup/CongratsActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 385
    if-nez p1, :cond_3

    .line 386
    const-string v7, "SilentRegActionForceSyncOnly"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    :cond_3
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ServiceChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 368
    .end local v1           #engineProxy:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
    .end local v5           #proxy:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;
    .end local v6           #resumed:Z
    :cond_4
    :try_start_1
    const-string v7, "SetupSCAChooser"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Couldn\'t force sync- no service object"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 370
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 371
    .local v2, exception:Landroid/os/RemoteException;
    const-string v7, "SetupSCAChooser"

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t force sync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v12, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static final isHidden(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 807
    const-string v0, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.motorola.blur.contacts.UNCONNECTED_ACCOUNT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.motorola.android.simcontactadapter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.local.contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.motorola.contacts.preloaded"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchNextScreen()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1189
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1190
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "existing"

    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mExistingAccount:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1191
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBackground:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1194
    const-string v4, "DeviceSetup"

    invoke-virtual {p0, v4, v6}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1195
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 1196
    .local v2, locationServiceOff:Z
    if-eqz v3, :cond_0

    .line 1197
    const-string v4, "BlurSetupDisableLocationService"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1200
    :cond_0
    if-eqz v2, :cond_2

    .line 1201
    sget-boolean v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->mShowDataSaver:Z

    if-eqz v4, :cond_1

    .line 1202
    const-class v4, Lcom/motorola/blur/setup/DataSaverActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, className:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 1213
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/ServiceChooserActivity;->setResult(I)V

    .line 1214
    return-void

    .line 1204
    .end local v0           #className:Ljava/lang/String;
    :cond_1
    const-class v4, Lcom/motorola/blur/setup/CongratsActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0

    .line 1207
    .end local v0           #className:Ljava/lang/String;
    :cond_2
    const-class v4, Lcom/motorola/blur/setup/LocationConsentActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0
.end method

.method private launchSettingsScreen(I)V
    .locals 29
    .parameter "id"

    .prologue
    .line 1013
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 1017
    .local v21, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    move v1, v4

    if-lt v0, v1, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1020
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    .line 1021
    .local v19, gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    invoke-virtual/range {v19 .. v19}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getAccountType()Ljava/lang/String;

    move-result-object v5

    .line 1022
    .local v5, accountType:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1023
    invoke-virtual/range {v19 .. v19}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    .line 1024
    .local v24, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    .end local v5           #accountType:Ljava/lang/String;
    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1028
    .end local v24           #name:Ljava/lang/String;
    .restart local v5       #accountType:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v26

    .line 1029
    .local v26, providerId:J
    invoke-virtual/range {v19 .. v19}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getAccountId()J

    move-result-wide v13

    .line 1030
    .local v13, accountId:J
    const-wide/16 v6, -0x1

    cmp-long v4, v26, v6

    if-nez v4, :cond_6

    .line 1031
    const-wide/16 v6, -0x1

    cmp-long v4, v13, v6

    if-eqz v4, :cond_3

    .line 1033
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getAccountType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v15

    .line 1034
    .local v15, accounts:[Landroid/accounts/Account;
    const/4 v12, 0x0

    .line 1035
    .local v12, account:Landroid/accounts/Account;
    if-eqz v15, :cond_2

    .line 1036
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    array-length v4, v15

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 1037
    aget-object v4, v15, v20

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1038
    aget-object v12, v15, v20

    .line 1043
    .end local v20           #i:I
    :cond_2
    if-eqz v12, :cond_3

    .line 1044
    sget-object v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->VVM_ACCOUNT_AUTHENTICATOR_TYPE:Ljava/lang/String;

    iget-object v6, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1045
    new-instance v28, Landroid/content/Intent;

    const-string v4, "com.motorola.vvm.VVM_ACCOUNT_RECEIVER"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v28, vvmIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1068
    .end local v12           #account:Landroid/accounts/Account;
    .end local v15           #accounts:[Landroid/accounts/Account;
    .end local v28           #vvmIntent:Landroid/content/Intent;
    :cond_3
    :goto_2
    const-wide/16 v6, -0x1

    cmp-long v4, v13, v6

    if-nez v4, :cond_9

    .line 1069
    const-string v4, "com.cequint.cityid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1070
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1071
    .local v16, cityIntent:Landroid/content/Intent;
    const-string v4, "com.cequint.cityid"

    const-string v5, "com.cequint.cityid.activity.UserLaunch"

    .end local v5           #accountType:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const/high16 v4, 0x1000

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1074
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1075
    :catch_0
    move-exception v17

    .line 1076
    .local v17, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "SetupSCAChooser"

    const-string v5, "Activity not found: com.cequint.cityid.activity.UserLaunch"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1036
    .end local v16           #cityIntent:Landroid/content/Intent;
    .end local v17           #ex:Landroid/content/ActivityNotFoundException;
    .restart local v5       #accountType:Ljava/lang/String;
    .restart local v12       #account:Landroid/accounts/Account;
    .restart local v15       #accounts:[Landroid/accounts/Account;
    .restart local v20       #i:I
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 1048
    .end local v20           #i:I
    :cond_5
    const-string v4, "android.settings.ACCOUNT_SYNC_SETTINGS"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string v4, "account"

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1050
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1056
    .end local v12           #account:Landroid/accounts/Account;
    .end local v15           #accounts:[Landroid/accounts/Account;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v25

    .line 1057
    .local v25, provider:Ljava/lang/String;
    if-eqz v25, :cond_3

    .line 1058
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/GAMSHelper;->composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1062
    .local v18, gamsAccountType:Ljava/lang/String;
    if-nez v18, :cond_3

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    .end local v5           #accountType:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1078
    .end local v18           #gamsAccountType:Ljava/lang/String;
    .end local v25           #provider:Ljava/lang/String;
    .restart local v5       #accountType:Ljava/lang/String;
    :cond_7
    const-string v4, "com.vzw.skype"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1079
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1080
    .restart local v16       #cityIntent:Landroid/content/Intent;
    const-string v4, "com.skype.android.verizon"

    const-string v5, "com.skype.android.verizon.activity.SkypeActivity"

    .end local v5           #accountType:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    const/high16 v4, 0x1000

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1083
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1084
    :catch_1
    move-exception v17

    .line 1085
    .restart local v17       #ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "SetupSCAChooser"

    const-string v5, "Activity not found: com.skype.android.verizon.activity.SkypeActivity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1089
    .end local v16           #cityIntent:Landroid/content/Intent;
    .end local v17           #ex:Landroid/content/ActivityNotFoundException;
    .restart local v5       #accountType:Ljava/lang/String;
    :cond_8
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1090
    .local v8, accountBundle:Landroid/os/Bundle;
    const-string v4, "addSingleAccount"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    move v6, v0

    invoke-virtual {v8, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1092
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/motorola/blur/setup/ServiceChooserActivity$9;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity$9;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_0

    .line 1115
    .end local v8           #accountBundle:Landroid/os/Bundle;
    :cond_9
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mClicked:Z

    .line 1117
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    move v4, v0

    if-eqz v4, :cond_a

    .line 1118
    const v22, 0x7f0c0036

    .line 1126
    .end local v5           #accountType:Ljava/lang/String;
    .local v22, message:I
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{0}"

    invoke-virtual/range {v19 .. v19}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 1127
    .local v23, messageString:Ljava/lang/String;
    new-instance v4, Lcom/motorola/blur/setup/ServiceChooserActivity$10;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/setup/ServiceChooserActivity$10;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;Ljava/lang/String;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1119
    .end local v22           #message:I
    .end local v23           #messageString:Ljava/lang/String;
    .restart local v5       #accountType:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "google"

    .end local v5           #accountType:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v26, v6

    if-nez v4, :cond_b

    .line 1120
    const v22, 0x7f0c0035

    .restart local v22       #message:I
    goto :goto_3

    .line 1121
    .end local v22           #message:I
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->isMultipleAccountsAllowed()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1122
    const v22, 0x7f0c0034

    .restart local v22       #message:I
    goto :goto_3

    .line 1124
    .end local v22           #message:I
    :cond_c
    const v22, 0x7f0c0033

    .restart local v22       #message:I
    goto :goto_3
.end method

.method private makeSingleAccountsList()V
    .locals 4

    .prologue
    .line 730
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCursor:Landroid/database/Cursor;

    .line 731
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSingleAccountProviderIds:Ljava/util/ArrayList;

    .line 732
    if-eqz v0, :cond_2

    .line 733
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 735
    :cond_0
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 736
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSingleAccountProviderIds:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    :cond_2
    return-void
.end method

.method private setupTables()V
    .locals 5

    .prologue
    const v4, 0x7f0b00e9

    const v3, 0x7f0b00e8

    const/4 v2, 0x0

    .line 551
    iget-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSetupShowOneList:Z

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v3, v2, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->buildTable(III)V

    .line 563
    :goto_0
    return-void

    .line 554
    :cond_0
    iget v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBlurAccountNumber:I

    invoke-direct {p0, v3, v2, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->buildTable(III)V

    .line 555
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    .local v0, size:I
    iget v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBlurAccountNumber:I

    if-le v0, v1, :cond_1

    .line 557
    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 558
    const v1, 0x7f0b00ea

    iget v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBlurAccountNumber:I

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->buildTable(III)V

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/ServiceChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDeleteAccountDialog(Ljava/lang/String;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V
    .locals 3
    .parameter "message"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 1136
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1138
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    if-eqz v1, :cond_0

    .line 1139
    const v1, 0x7f0c007f

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1152
    :goto_0
    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1156
    return-void

    .line 1141
    :cond_0
    const v1, 0x7f0c0057

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1142
    const v1, 0x7f0c0059

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/motorola/blur/setup/ServiceChooserActivity$11;

    invoke-direct {v2, p0, p2}, Lcom/motorola/blur/setup/ServiceChooserActivity$11;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showServiceInfoDialog(I)V
    .locals 12
    .parameter "id"

    .prologue
    .line 664
    const/4 v8, 0x0

    .line 665
    .local v8, text:Ljava/lang/String;
    move v4, p1

    .line 666
    .local v4, position:I
    iget-object v9, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    .line 667
    .local v3, gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    invoke-virtual {v3}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v6

    .line 668
    .local v6, providerId:J
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v6, v7}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, provider:Ljava/lang/String;
    sget-object v9, Lcom/motorola/blur/setup/ServiceChooserActivity;->sDefaultTextMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 672
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "use_google_mail"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v9, "email"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 675
    const v9, 0x7f0c0133

    invoke-virtual {p0, v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 688
    :goto_0
    if-eqz v8, :cond_1

    .line 689
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    const-string v9, "_thumb.png"

    invoke-direct {p0, v6, v7, v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getProviderIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 691
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 692
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 696
    :goto_1
    sget-wide v9, Lcom/motorola/blur/setup/ServiceChooserActivity;->sPicasaId:J

    cmp-long v9, v6, v9

    if-eqz v9, :cond_0

    sget-wide v9, Lcom/motorola/blur/setup/ServiceChooserActivity;->sYouTubeId:J

    cmp-long v9, v6, v9

    if-nez v9, :cond_6

    :cond_0
    #getter for: Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDisplayName:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->access$800(Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/motorola/blur/setup/ServiceChooserActivity;->sGalleryName:Ljava/lang/String;

    sget-object v11, Lcom/motorola/blur/setup/ServiceChooserActivity;->sConnectedGalleryName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 700
    .local v2, displayName:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 701
    const v9, 0x7f0c0057

    invoke-virtual {p0, v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 702
    const v9, 0x7f0c005b

    invoke-virtual {p0, v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/motorola/blur/setup/ServiceChooserActivity$8;

    invoke-direct {v10, p0, v4}, Lcom/motorola/blur/setup/ServiceChooserActivity$8;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;I)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 708
    const-string v9, "{0}"

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 712
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #displayName:Ljava/lang/String;
    :cond_1
    return-void

    .line 678
    :cond_2
    sget-object v9, Lcom/motorola/blur/setup/ServiceChooserActivity;->sDefaultTextMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 681
    :cond_3
    invoke-virtual {p0, v6, v7}, Lcom/motorola/blur/setup/ServiceChooserActivity;->onlyHasPictureAccount(J)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 682
    const v9, 0x7f0c0134

    invoke-virtual {p0, v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 684
    :cond_4
    const v9, 0x7f0c0130

    invoke-virtual {p0, v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 694
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #dialog:Landroid/app/AlertDialog$Builder;
    :cond_5
    invoke-static {v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getDefaultProviderIcon(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 696
    :cond_6
    #getter for: Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDisplayName:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->access$800(Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    goto :goto_2
.end method

.method private unbindSyncService()V
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBound:Z

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBound:Z

    .line 888
    :cond_0
    return-void
.end method

.method private updateStatus()V
    .locals 15

    .prologue
    .line 937
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    .line 938
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    .local v12, selection:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 940
    const-string v1, "provider_id"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 942
    const-string v1, " AND "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    :cond_0
    const-string v1, "provider_id != %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blur"

    invoke-static {v4, v5}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->NAMED_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    .line 956
    .end local v12           #selection:Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 957
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 958
    iget v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBlurAccountNumber:I

    .line 960
    .local v7, blurAccounts:I
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 961
    .local v2, providerId:J
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 962
    .local v4, accountId:J
    iget-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSetupShowOneList:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v8, v1

    .line 963
    .local v8, count:I
    :goto_1
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSingleAccountProviderIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 964
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v8, :cond_2

    .line 965
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v13

    cmp-long v1, v13, v2

    if-nez v1, :cond_7

    .line 966
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    invoke-virtual {v0, v4, v5}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->setAccountId(J)V

    .line 990
    .end local v9           #i:I
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 991
    iput v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBlurAccountNumber:I

    .line 994
    .end local v2           #providerId:J
    .end local v4           #accountId:J
    .end local v7           #blurAccounts:I
    .end local v8           #count:I
    :cond_3
    iget-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSetupShowOneList:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 995
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 997
    :cond_4
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->drawScreen()V

    .line 998
    return-void

    .line 951
    :cond_5
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    goto :goto_0

    .line 962
    .restart local v2       #providerId:J
    .restart local v4       #accountId:J
    .restart local v7       #blurAccounts:I
    :cond_6
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move v8, v1

    goto :goto_1

    .line 964
    .restart local v8       #count:I
    .restart local v9       #i:I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 970
    .end local v9           #i:I
    :cond_8
    iget-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    if-nez v1, :cond_2

    .line 971
    const/4 v10, 0x1

    .line 972
    .local v10, needToAdd:Z
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v8, v1, :cond_9

    .line 973
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_9

    .line 974
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getAccountId()J

    move-result-wide v13

    cmp-long v1, v13, v4

    if-nez v1, :cond_a

    .line 975
    const/4 v10, 0x0

    .line 980
    .end local v9           #i:I
    :cond_9
    if-eqz v10, :cond_2

    .line 981
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAccountsCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;-><init>(Ljava/lang/String;JJZ)V

    .line 984
    .local v0, gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v11

    .line 985
    .local v11, provider:Ljava/lang/String;
    invoke-static {p0, v11}, Lcom/motorola/blur/provider/GAMSHelper;->composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->setAccountType(Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 987
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 973
    .end local v0           #gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    .end local v11           #provider:Ljava/lang/String;
    .restart local v9       #i:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method


# virtual methods
.method public createTableView(I)Landroid/view/View;
    .locals 11
    .parameter "position"

    .prologue
    .line 610
    iget-object v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    .line 611
    .local v1, gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030025

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 612
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0b00be

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 614
    .local v5, text:Landroid/widget/TextView;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 615
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 616
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 617
    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridItemWidth:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 619
    const v7, 0x7f0b00bc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 620
    .local v2, image:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 621
    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 622
    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    :goto_0
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 642
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 643
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x7f0a0013

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 644
    const v7, 0x7f0a0012

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 646
    invoke-virtual {v6, p1}, Landroid/view/View;->setId(I)V

    .line 647
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 648
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 650
    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getAccountId()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 651
    const v7, 0x7f0b00bd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 654
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 655
    iget-object v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 656
    iget-object v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 657
    iget v7, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridItemWidth:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 658
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    return-object v6

    .line 624
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_1
    const v7, 0x3020169

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v7

    const-string v9, "_thumb.png"

    invoke-direct {p0, v7, v8, v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getProviderIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 632
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 635
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, provider:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getDefaultProviderIcon(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method protected goBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 397
    sget-boolean v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSilentRegistrationRequired:Z

    if-ne v0, v1, :cond_1

    .line 398
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    if-ne v0, v1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->finish()V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->finish()V

    goto :goto_0

    .line 405
    :cond_2
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->goBack()V

    goto :goto_0
.end method

.method handleClick(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 1235
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mClicked:Z

    if-ne v0, v1, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1239
    :cond_0
    iput-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mClicked:Z

    .line 1240
    new-instance v0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/setup/ServiceChooserActivity$12;-><init>(Lcom/motorola/blur/setup/ServiceChooserActivity;I)V

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->start()V

    goto :goto_0
.end method

.method loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filename"

    .prologue
    const-string v4, "SetupSCAChooser"

    .line 1217
    const/4 v0, 0x0

    .line 1218
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 1220
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 1221
    .local v2, inputStream:Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1222
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1231
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 1223
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1224
    .local v1, exception:Ljava/io/FileNotFoundException;
    const-string v3, "SetupSCAChooser"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0

    .line 1226
    .end local v1           #exception:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1227
    .local v1, exception:Ljava/io/IOException;
    const-string v3, "SetupSCAChooser"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 915
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/setup/SetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 916
    iput-boolean v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mClicked:Z

    .line 918
    if-ne p2, v1, :cond_4

    .line 919
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    if-eqz v0, :cond_3

    .line 920
    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    sget-boolean v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSilentRegistrationRequired:Z

    if-nez v0, :cond_2

    .line 921
    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->setResult(I)V

    .line 922
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->finish()V

    .line 934
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    sget-boolean v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSilentRegistrationRequired:Z

    if-ne v0, v3, :cond_1

    .line 926
    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->goSkipOrFinish(Z)V

    goto :goto_0

    .line 929
    :cond_3
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->updateStatus()V

    goto :goto_0

    .line 931
    :cond_4
    if-ne v3, p2, :cond_1

    .line 932
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->launchSettingsScreen(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->drawScreen()V

    .line 513
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 514
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "icicle"

    .prologue
    .line 412
    invoke-super/range {p0 .. p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 415
    invoke-static {}, Lcom/motorola/blur/util/os/MyLooper;->singleton()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/motorola/blur/util/cache/ProviderIconCache;->singleton(Landroid/content/Context;Landroid/os/Looper;)Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/motorola/blur/util/cache/ProviderIconCache;->setMaxPhotoLengthPixels(I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/motorola/blur/util/cache/ProviderIconCache;->addOnCacheChangedListener(Landroid/os/Handler;)V

    .line 418
    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSilentRegistrationRequired:Z

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->hideConfigMenuItems()V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 423
    .local v20, resolver:Landroid/content/ContentResolver;
    const-string v4, "picasa"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sPicasaId:J

    .line 424
    sget-wide v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sPicasaId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 425
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sPicasaId:J

    .line 427
    :cond_0
    const-string v4, "youtube"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sYouTubeId:J

    .line 428
    sget-wide v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sYouTubeId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 429
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sYouTubeId:J

    .line 431
    :cond_1
    const v4, 0x7f0c0176

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sFormattedPrettyName:Ljava/lang/String;

    .line 432
    const v4, 0x30a012b

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sGalleryName:Ljava/lang/String;

    .line 433
    const v4, 0x30a012a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->sConnectedGalleryName:Ljava/lang/String;

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 436
    .local v15, intent:Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    .line 437
    if-eqz v15, :cond_7

    .line 438
    const-string v4, "existing"

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mExistingAccount:Ljava/lang/Boolean;

    .line 439
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 440
    .local v10, background:I
    if-lez v10, :cond_2

    .line 441
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBackground:I

    .line 443
    :cond_2
    const-string v4, "provider"

    const-wide/16 v5, 0x0

    invoke-virtual {v15, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 444
    .local v16, providerId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_3

    .line 445
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 446
    .local v18, providerIntent:Landroid/content/Intent;
    const-class v4, Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 447
    const-string v4, "provider"

    move-object/from16 v0, v18

    move-object v1, v4

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 448
    const-string v4, "username"

    const-string v5, "username"

    invoke-virtual {v15, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBackground:I

    move v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 453
    .end local v18           #providerIntent:Landroid/content/Intent;
    :cond_3
    const-string v4, "provider_id"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v19

    .line 454
    .local v19, providers_list:[J
    if-eqz v19, :cond_5

    .line 455
    move-object/from16 v0, v19

    array-length v0, v0

    move v12, v0

    .line 456
    .local v12, count:I
    if-lez v12, :cond_5

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    move-object v4, v0

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    move-object v4, v0

    const/4 v5, 0x0

    aget-wide v5, v19, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 459
    const/4 v14, 0x1

    .local v14, i:I
    :goto_0
    if-ge v14, v12, :cond_4

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    move-object v4, v0

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    move-object v4, v0

    aget-wide v5, v19, v14

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 463
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    move-object v4, v0

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mProviderListSpecified:Z

    .line 468
    .end local v12           #count:I
    .end local v14           #i:I
    :cond_5
    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 470
    :cond_6
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    .line 477
    .end local v10           #background:I
    .end local v16           #providerId:J
    .end local v19           #providers_list:[J
    :cond_7
    :goto_1
    sget-boolean v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSilentRegistrationRequired:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z

    move v4, v0

    if-nez v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    :cond_8
    const/4 v4, 0x1

    :goto_2
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSetupShowOneList:Z

    .line 480
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v21, selection:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 483
    const-string v4, "_id"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSelection:Ljava/lang/StringBuilder;

    move-object v4, v0

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 487
    :cond_9
    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/motorola/blur/setup/ServiceChooserActivity$ProviderProjection;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "ui_order ASC"

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 489
    .local v13, cursor:Landroid/database/Cursor;
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCursor:Landroid/database/Cursor;

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->createAccountLists()V

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->makeSingleAccountsList()V

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->updateStatus()V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCursor:Landroid/database/Cursor;

    move-object v4, v0

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_b

    .line 496
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->setResult(I)V

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->launchNextScreen()V

    .line 500
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->drawScreen()V

    .line 501
    return-void

    .line 471
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v21           #selection:Ljava/lang/StringBuilder;
    .restart local v10       #background:I
    .restart local v16       #providerId:J
    .restart local v19       #providers_list:[J
    :cond_c
    sget-boolean v4, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSilentRegistrationRequired:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->unbindSyncService()V

    .line 473
    new-instance v11, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v11, bindSync:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/blur/setup/ServiceChooserActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/ServiceChooserActivity;->mBound:Z

    goto/16 :goto_1

    .line 477
    .end local v10           #background:I
    .end local v11           #bindSync:Landroid/content/Intent;
    .end local v16           #providerId:J
    .end local v19           #providers_list:[J
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public onDeleteFinished(ZI)V
    .locals 3
    .parameter "deleted"
    .parameter "error"

    .prologue
    .line 1303
    if-eqz p1, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mDeletedAccount:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mSingleAccountProviderIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mDeletedAccount:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mDeletedAccount:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->setAccountId(J)V

    .line 1310
    :goto_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->updateStatus()V

    .line 1311
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->setupTables()V

    .line 1316
    :cond_0
    :goto_1
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mErrorCode:I

    .line 1317
    return-void

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mDeletedAccount:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1314
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mDeletedAccount:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    goto :goto_1

    :cond_3
    move v0, p2

    .line 1316
    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->unbindSyncService()V

    .line 880
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 881
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 506
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onResume()V

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mClicked:Z

    .line 508
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 861
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onStart()V

    .line 862
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/util/cache/ProviderIconCache;->addOnCacheChangedListener(Landroid/os/Handler;)V

    .line 863
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->updateStatus()V

    .line 864
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 868
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onStop()V

    .line 869
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/util/cache/ProviderIconCache;->removeOnCacheChangedDataListener(Landroid/os/Handler;)V

    .line 870
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 852
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onWindowFocusChanged(Z)V

    .line 853
    iget v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mErrorCode:I

    if-eqz v0, :cond_0

    .line 854
    iget v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mErrorCode:I

    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SilentBlurUtility;->showErrorDialog(Landroid/content/Context;I)V

    .line 855
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity;->mErrorCode:I

    .line 857
    :cond_0
    return-void
.end method

.method onlyHasPictureAccount(J)Z
    .locals 9
    .parameter "providerId"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 715
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->PROVIDER_SERVICES_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "capability"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 718
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 719
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    const-wide/16 v0, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v0, v8

    .line 726
    :goto_0
    return v0

    .line 724
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 726
    goto :goto_0
.end method
