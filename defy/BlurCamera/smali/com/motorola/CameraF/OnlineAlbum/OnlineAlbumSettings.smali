.class public Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;
.super Landroid/app/ListActivity;
.source "OnlineAlbumSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final GET_EMAIL_ADDR:I = 0x1

.field static final INITSOCIALSHARE_FINISH:I = 0x1

.field public static final ONLINE_ALBUM_SETTINGS_PREFS:Ljava/lang/String; = "onlineAlbumSettingsPrefs"

.field private static final SUB_ACTIVITY_ADD_ACCOUNT:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private addAccountView:Landroid/widget/TextView;

.field private emailAddress:Ljava/lang/String;

.field private initEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitSocialShareServiceThread:Ljava/lang/Thread;

.field private mTaskInitSocialShareService:Ljava/lang/Runnable;

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

.field nCountPCS:I

.field private onlineAlbumAdapter:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;

.field private socialEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private socialName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "OnlineAlbumSettings"

    sput-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->nCountPCS:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->m_vCachedAPSSProviders:Ljava/util/Vector;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->initEntryList:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;-><init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)V

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;-><init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)V

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mTaskInitSocialShareService:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->onlineAlbumAdapter:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->initEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->loadPreferences()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initSocialShareServices()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 246
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "initSocialShareServices() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSocialShareServices() - PhotoSharing account count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->nCountPCS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    new-instance v1, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    const v2, 0x7f0b0074

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    new-instance v1, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    const v2, 0x7f0b0075

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v5}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "initSocialShareServices() - showing footer..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->addAccountView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mInitSocialShareServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 284
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mTaskInitSocialShareService:Ljava/lang/Runnable;

    const-string v2, "AlbumInitSocialShareSercice"

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mInitSocialShareServiceThread:Ljava/lang/Thread;

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mInitSocialShareServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mInitSocialShareServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mInitSocialShareServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 288
    :cond_3
    return-void
.end method

.method private loadPreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 368
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 369
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v7, "loadPreferences() - ENTER"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    const-string v6, "onlineAlbumSettingsPrefs"

    invoke-virtual {p0, v6, v9}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 373
    .local v4, onlineAlbumPreferences:Landroid/content/SharedPreferences;
    const-string v6, "INITIALIZED"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 375
    .local v3, initialized:Z
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    .line 376
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadPreferences() - initialized = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    if-eqz v3, :cond_11

    .line 381
    const-string v6, "SELECTION"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 382
    .local v5, savedSelection:I
    if-nez v5, :cond_4

    .line 384
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_2

    .line 385
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v7, "loadPreferences - saved selected == NONE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_2
    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    .line 476
    .end local v5           #savedSelection:I
    :cond_3
    :goto_0
    return-void

    .line 391
    .restart local v5       #savedSelection:I
    :cond_4
    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 394
    const-string v6, "EMAIL_ADDRESS"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    .line 396
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 398
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_5

    .line 399
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v7, "loadPreferences() - emailAddress == null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_5
    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    goto :goto_0

    .line 406
    :cond_6
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_7

    .line 407
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadPreferences() - savedSelection = Custom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_7
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->setEmailAddr(Ljava/lang/String;)V

    .line 411
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    goto :goto_0

    .line 416
    :cond_8
    invoke-static {}, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->getActivePhotoSharingServiceCount()I

    move-result v6

    iput v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->nCountPCS:I

    .line 417
    iget v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->nCountPCS:I

    if-nez v6, :cond_a

    .line 420
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_9

    .line 421
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v7, "loadPreferences() - no social networks anymore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_9
    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    goto :goto_0

    .line 430
    :cond_a
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_b

    .line 431
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v7, "loadPreferences() - social network saved"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_b
    const/4 v1, 0x0

    .line 435
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, ind:I
    :goto_1
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 437
    const-string v6, "BLUR_ID"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 439
    .local v0, blur_id:I
    if-ne v0, v10, :cond_e

    .line 441
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_c

    .line 442
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadPreferences() - blur_id from pref = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v0           #blur_id:I
    :cond_c
    :goto_2
    if-nez v1, :cond_3

    .line 462
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_d

    .line 463
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v7, "loadPreferences() - loaded blur_id, but couldn\'t find match"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_d
    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    goto/16 :goto_0

    .line 447
    .restart local v0       #blur_id:I
    :cond_e
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getBlurID()I

    move-result v6

    if-ne v6, v0, :cond_10

    .line 449
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_f

    .line 450
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v7, "loadPreferences() - found blur_id match"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_f
    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    .line 455
    const/4 v1, 0x1

    .line 456
    goto :goto_2

    .line 435
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 474
    .end local v0           #blur_id:I
    .end local v1           #found:Z
    .end local v2           #ind:I
    .end local v5           #savedSelection:I
    :cond_11
    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    goto/16 :goto_0
.end method

.method private savePreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 480
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 481
    sget-object v3, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v4, "savePreferences() - ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    const-string v3, "onlineAlbumSettingsPrefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 485
    .local v2, onlineAlbumSharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, ind:I
    :goto_0
    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 493
    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 496
    const-string v4, "SELECTION"

    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getType()I

    move-result v3

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 498
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 499
    sget-object v4, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePreferences() - saving type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1
    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 504
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    .line 505
    sget-object v4, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePreferences() - saving email = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getEmailAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_2
    const-string v3, "EMAIL_ADDRESS"

    iget-object v4, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getEmailAddr()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
    :cond_3
    :goto_1
    const-string v3, "INITIALIZED"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 525
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 526
    return-void

    .line 511
    .restart local p0
    :cond_4
    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getType()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 514
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_5

    .line 515
    sget-object v4, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePreferences() - save Blur id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getBlurID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_5
    const-string v3, "BLUR_ID"

    iget-object v4, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getBlurID()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 491
    .restart local p0
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 292
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() - requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 364
    :cond_1
    :goto_0
    return-void

    .line 302
    :pswitch_0
    if-ne p2, v3, :cond_5

    .line 304
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 305
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult() - result code == ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2
    const-string v0, "EMAIL_ADDRESS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    .line 310
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 311
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() - Email Address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    .line 315
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->setEmailAddr(Ljava/lang/String;)V

    .line 317
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 318
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult() - got email address, finishing activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_4
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->savePreferences()V

    .line 322
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->finish()V

    goto :goto_0

    .line 326
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 327
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult() - result code == user didn\'t enter anything"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    .line 333
    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    goto :goto_0

    .line 337
    :pswitch_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    .line 338
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() - Add account returned with code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_7
    if-eq p2, v3, :cond_8

    .line 343
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 344
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult() - user did not add an account"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 349
    :cond_8
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_9

    .line 350
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult() - user Added account"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_9
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->initSocialShareServices()V

    .line 357
    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    goto/16 :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x3

    .line 161
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->requestWindowFeature(I)Z

    .line 166
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v2, "onCreate() - ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setContentView(I)V

    .line 174
    const v1, 0x7f02002a

    invoke-virtual {p0, v3, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setFeatureDrawableResource(II)V

    .line 177
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f050005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->addAccountView:Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->addAccountView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->addAccountView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 181
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestLayout()V

    .line 186
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    new-instance v1, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;

    const v2, 0x7f03000c

    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->onlineAlbumAdapter:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;

    .line 190
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->onlineAlbumAdapter:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->initSocialShareServices()V

    .line 193
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestLayout()V

    .line 194
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 195
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 236
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mInitSocialShareServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mInitSocialShareServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mInitSocialShareServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 240
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mInitSocialShareServiceThread:Ljava/lang/Thread;

    .line 243
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    .line 553
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onItemClick() - Enter : selection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    long-to-int v9, p4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    long-to-int v7, p4

    if-gez v7, :cond_6

    .line 559
    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->addAccountView:Landroid/widget/TextView;

    if-ne p2, v7, :cond_4

    .line 561
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_1

    .line 562
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v8, "onItemClick() - Add Account Footer was selected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v8, "onItemClick() - Launching add account"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 568
    .local v3, intentAddAccount:Landroid/content/Intent;
    sget-object v7, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 569
    const-string v7, "android.intent.action.INSERT"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    sget-object v7, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$ServiceType;->ePhotoShareService:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$ServiceType;

    invoke-static {v7}, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->getPSProviders(Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$ServiceType;)Ljava/util/Vector;

    move-result-object v6

    .line 573
    .local v6, vPSP:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 575
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v4, v7, [J

    .line 576
    .local v4, psps:[J
    const/4 v1, 0x0

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .local v1, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 577
    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v4, v1

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    :cond_2
    const-string v7, "provider_id"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 584
    .end local v1           #i:I
    .end local v4           #psps:[J
    :cond_3
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {p0, v3, v7}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_1
    sget-object v7, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$ServiceType;->ePhotoShareService:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$ServiceType;

    invoke-static {v7}, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->getAPSProviders(Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$ServiceType;)Ljava/util/Vector;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->m_vCachedAPSSProviders:Ljava/util/Vector;

    .line 595
    .end local v3           #intentAddAccount:Landroid/content/Intent;
    .end local v6           #vPSP:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_4
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_5

    .line 596
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v8, "onItemClick() - Didn\'t know how to handle what was clicked, returning from function"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_5
    :goto_2
    return-void

    .line 585
    .restart local v3       #intentAddAccount:Landroid/content/Intent;
    .restart local v6       #vPSP:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 586
    .local v0, a:Landroid/content/ActivityNotFoundException;
    const v7, 0x7f0b0058

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 587
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 600
    .end local v0           #a:Landroid/content/ActivityNotFoundException;
    .end local v3           #intentAddAccount:Landroid/content/Intent;
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #vPSP:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_6
    long-to-int v7, p4

    invoke-virtual {p0, v7}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setSelectedEntry(I)V

    .line 603
    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    long-to-int v8, p4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {p1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    .line 605
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_7

    .line 606
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v8, "onItemClick() - CUSTOM was selected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 609
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 611
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_8

    .line 612
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onItemClick() - existing email address = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_8
    const-string v7, "EXISTING_EMAIL"

    iget-object v8, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    :cond_9
    :goto_3
    const-class v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;

    invoke-virtual {v2, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 622
    const/4 v7, 0x1

    invoke-virtual {p0, v2, v7}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 623
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setVisible(Z)V

    goto :goto_2

    .line 617
    :cond_a
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_9

    .line 618
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v8, "onItemClick() - no existing email address"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 627
    .end local v2           #intent:Landroid/content/Intent;
    :cond_b
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_c

    .line 628
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v8, "onItemClick() - None OR SocialAccount Cicked, finishing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_c
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->finish()V

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 220
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onPause() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->savePreferences()V

    .line 225
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->setVisible(Z)V

    .line 202
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 210
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStart() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->loadPreferences()V

    .line 215
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 230
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStop() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    return-void
.end method

.method public setSelectedEntry(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 530
    const/4 v1, 0x0

    .line 532
    .local v1, v:Landroid/view/View;
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 533
    sget-object v2, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedEntry() - Enter : position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    const/4 v0, 0x0

    .local v0, ind:I
    :goto_0
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 538
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->isSelected()Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 540
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->setSelected(Z)V

    .line 544
    :cond_1
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    invoke-virtual {v2, v5}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->setSelected(Z)V

    .line 547
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->onlineAlbumAdapter:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;

    invoke-virtual {v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->notifyDataSetChanged()V

    .line 548
    return-void

    .line 536
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
