.class public Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;
.super Landroid/app/Activity;
.source "OnlineAlbumUpload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTIVITY_CREATE:I = 0x0

.field public static final ONLINE_ALBUM_SETTINGS_PREFS:Ljava/lang/String; = "onlineAlbumSettingsPrefs"

.field private static final START_UPLOAD:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final UPLOAD_TIMEOUT:I = 0xbb8


# instance fields
.field apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

.field private emailAddr:Ljava/lang/String;

.field private initialized:Z

.field private mEmptyView:Landroid/widget/ScrollView;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mItemAddrsView:Landroid/widget/TextView;

.field private mStartView:Landroid/widget/ScrollView;

.field private startUpload:Z

.field private uri:Landroid/net/Uri;

.field private userSelection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "OnlineAlbumUpload"

    sput-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->userSelection:I

    .line 52
    iput-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->emailAddr:Ljava/lang/String;

    .line 53
    iput-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    .line 56
    iput-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->startUpload:Z

    .line 349
    new-instance v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$5;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$5;-><init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;)V

    iput-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->startUpload:Z

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->startUpload:Z

    return p1
.end method

.method private initUploadView()V
    .locals 5

    .prologue
    .line 257
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->setContentView(I)V

    .line 258
    const v2, 0x7f0e002d

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mItemAddrsView:Landroid/widget/TextView;

    .line 259
    const v2, 0x7f0e002c

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mImageView:Landroid/widget/ImageView;

    .line 260
    const v2, 0x7f0e002a

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 261
    .local v0, StartCancelButton:Landroid/widget/Button;
    new-instance v2, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$4;

    invoke-direct {v2, p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$4;-><init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->userSelection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 273
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mItemAddrsView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    iget-object v3, v3, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    iget v3, v3, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 275
    .local v1, uriProviderIcon:Landroid/net/Uri;
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 283
    .end local v1           #uriProviderIcon:Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mStartView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 284
    return-void

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mItemAddrsView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->emailAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mImageView:Landroid/widget/ImageView;

    const v3, 0x1080007

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 388
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    .line 389
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v8, "loadPreferences() - ENTER"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    const-string v7, "onlineAlbumSettingsPrefs"

    invoke-virtual {p0, v7, v10}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 393
    .local v5, onlineAlbumPreferences:Landroid/content/SharedPreferences;
    if-nez v5, :cond_2

    .line 395
    iput-boolean v10, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    .line 400
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v8, "loadPreferences() - initialized = true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_3
    iput-boolean v11, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    .line 407
    const-string v7, "SELECTION"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->userSelection:I

    .line 408
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 409
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadPreferences() - Selection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->userSelection:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_4
    iget v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->userSelection:I

    if-nez v7, :cond_6

    .line 415
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_5

    .line 416
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v8, "loadPreferences() - User has NONE Selected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_5
    iput-boolean v10, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    goto :goto_0

    .line 422
    :cond_6
    iget v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->userSelection:I

    if-ne v7, v11, :cond_11

    .line 425
    const-string v7, "BLUR_ID"

    invoke-interface {v5, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 426
    .local v0, blur_id:I
    if-ne v0, v12, :cond_8

    .line 427
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_7

    .line 428
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v8, "loadPreferences() - blur_id not valid from preferences"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_7
    iput-boolean v10, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    goto :goto_0

    .line 435
    :cond_8
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_9

    .line 436
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadPreferences() - blur_id is valid from preferences = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->updateActivePhotoServices(Landroid/content/ContentResolver;)V

    .line 444
    sget-object v6, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    .line 445
    .local v6, test:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 447
    .local v3, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 448
    .local v2, i:I
    const/4 v1, 0x0

    .line 449
    .local v1, found:Z
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 451
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 453
    .local v4, o:Ljava/lang/Integer;
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_a

    .line 454
    sget-object v8, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iteration, get service: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_a
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->getService(I)Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    .line 458
    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    iget v7, v7, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    if-ne v7, v0, :cond_d

    .line 460
    const/4 v1, 0x1

    .line 471
    .end local v4           #o:Ljava/lang/Integer;
    :cond_b
    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    if-nez v7, :cond_f

    .line 473
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_c

    .line 474
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v8, "loadPreferences() - apcs = null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_c
    iput-boolean v10, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    goto/16 :goto_0

    .line 464
    .restart local v4       #o:Ljava/lang/Integer;
    :cond_d
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_e

    .line 465
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iteration = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    iget-object v9, v9, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    iget v9, v9, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 469
    goto/16 :goto_1

    .line 481
    .end local v4           #o:Ljava/lang/Integer;
    :cond_f
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_10

    .line 482
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadPreferences() - apcs = VALID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    iget-object v9, v9, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_10
    iput-boolean v11, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    goto/16 :goto_0

    .line 490
    .end local v0           #blur_id:I
    .end local v1           #found:Z
    .end local v2           #i:I
    .end local v3           #it:Ljava/util/Iterator;
    .end local v6           #test:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_11
    iget v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->userSelection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 493
    const-string v7, "EMAIL_ADDRESS"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->emailAddr:Ljava/lang/String;

    .line 494
    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->emailAddr:Ljava/lang/String;

    if-nez v7, :cond_13

    .line 496
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_12

    .line 497
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v8, "loadPreferences() - emailAddr = NULL from preferences"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_12
    iput-boolean v10, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    goto/16 :goto_0

    .line 503
    :cond_13
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_14

    .line 504
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadPreferences() - emailAddr loaded from preferences = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->emailAddr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_14
    iput-boolean v11, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    goto/16 :goto_0
.end method

.method private prepUpload()V
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mEmptyView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mEmptyView:Landroid/widget/ScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initUploadView()V

    .line 246
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 247
    sget-object v1, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart() - Sending message to self to start upload in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 251
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 252
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 253
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 367
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 369
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult() - ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->loadPreferences()V

    .line 375
    iget-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->prepUpload()V

    .line 379
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 384
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 72
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - ENTER"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-virtual {p0, v8}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->requestWindowFeature(I)Z

    .line 79
    const v6, 0x7f03000d

    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->setContentView(I)V

    .line 81
    const v6, 0x7f0e001f

    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mEmptyView:Landroid/widget/ScrollView;

    .line 82
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mEmptyView:Landroid/widget/ScrollView;

    if-nez v6, :cond_1

    .line 84
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    .line 85
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - mEmptyView = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    const v6, 0x7f0e0025

    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mStartView:Landroid/widget/ScrollView;

    .line 90
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mStartView:Landroid/widget/ScrollView;

    if-nez v6, :cond_2

    .line 92
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_2

    .line 93
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - mStartView = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    const v6, 0x7f0e0029

    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mItemAddrsView:Landroid/widget/TextView;

    .line 98
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mItemAddrsView:Landroid/widget/TextView;

    if-nez v6, :cond_3

    .line 100
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_3

    .line 101
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - mItemAddrsView = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_3
    const v6, 0x7f0e0028

    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mImageView:Landroid/widget/ImageView;

    .line 106
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mImageView:Landroid/widget/ImageView;

    if-nez v6, :cond_4

    .line 108
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_4

    .line 109
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - mImageView = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 114
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, action:Ljava/lang/String;
    if-nez v3, :cond_6

    .line 118
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_5

    .line 119
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - Action == null, finishing..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->finish()V

    .line 193
    :goto_0
    return-void

    .line 127
    :cond_6
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.motorola.CameraF.ONLINE_ALBUM_UPLOAD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 129
    :cond_7
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_8

    .line 130
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - Handle ACTION_SEND || ONLINE_ALBUM_UPLOAD"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_8
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 135
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->uri:Landroid/net/Uri;

    .line 136
    iget-object v6, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->uri:Landroid/net/Uri;

    if-nez v6, :cond_a

    .line 138
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_9

    .line 139
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - URI == NULL, exiting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->finish()V

    .line 166
    :cond_a
    :goto_1
    const v6, 0x7f0e0023

    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 167
    .local v1, SettingButton:Landroid/widget/Button;
    new-instance v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$1;

    invoke-direct {v6, p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$1;-><init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v6, 0x7f0e0024

    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 176
    .local v0, CancelButton:Landroid/widget/Button;
    new-instance v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$2;

    invoke-direct {v6, p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$2;-><init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v6, 0x7f0e002a

    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 185
    .local v2, StartCancelButton:Landroid/widget/Button;
    new-instance v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$3;

    invoke-direct {v6, p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$3;-><init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 147
    .end local v0           #CancelButton:Landroid/widget/Button;
    .end local v1           #SettingButton:Landroid/widget/Button;
    .end local v2           #StartCancelButton:Landroid/widget/Button;
    :cond_b
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_c

    .line 148
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - intent.getType() != /image, finishing... "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_c
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->finish()V

    goto :goto_1

    .line 155
    :cond_d
    const-string v6, "android.intent.action.ACTION_SHARE_MULTIPLE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 157
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_e

    .line 158
    sget-object v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() - Handle ACTION_SHARE_MULTIPLE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_e
    const v6, 0x7f0b0059

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 163
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 199
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v1, "onResume() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 208
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v1, "onStart() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->loadPreferences()V

    .line 214
    iget-boolean v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->initialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->prepUpload()V

    .line 234
    :goto_0
    return-void

    .line 220
    :cond_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 221
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() - User has NONE Selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mStartView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 226
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 227
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v1, "onStart() - mStartView is visible, setting it to GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mStartView:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->mEmptyView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startUpload()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    const-string v12, "PhotoTitle"

    const-string v11, ""

    .line 288
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v1, "startUpload - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUpload - URI string = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    const/4 v9, 0x0

    .line 295
    .local v9, intent:Landroid/content/Intent;
    iget v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->userSelection:I

    if-ne v0, v10, :cond_5

    .line 297
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 298
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v1, "prepareUpload - userSelection = SOCIAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    new-array v6, v10, [Ljava/lang/String;

    .line 302
    .local v6, arrSNProviders:[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    iget-object v0, v0, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_strProvider:Ljava/lang/String;

    :goto_0
    aput-object v0, v6, v5

    .line 304
    new-instance v9, Landroid/content/Intent;

    .end local v9           #intent:Landroid/content/Intent;
    const-string v0, "com.motorola.blur.socialshare.UPLOAD_IMAGE_BLUR"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v0, "UploadPhotoUri"

    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v0, "UploadSNProviders"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v0, "SetProfilePhoto"

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v5

    const-string v0, "_display_name"

    aput-object v0, v2, v10

    .line 311
    .local v2, projection:[Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->uri:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 317
    .local v8, column1Value:Ljava/lang/String;
    const-string v0, "PhotoTitle"

    invoke-virtual {v9, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    .end local v8           #column1Value:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 326
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 342
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #arrSNProviders:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2
    :goto_2
    invoke-virtual {p0, v9}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->sendBroadcast(Landroid/content/Intent;)V

    .line 345
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->setResult(ILandroid/content/Intent;)V

    .line 346
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->finish()V

    .line 347
    return-void

    .line 302
    .restart local v6       #arrSNProviders:[Ljava/lang/String;
    :cond_3
    const-string v0, ""

    move-object v0, v11

    goto :goto_0

    .line 321
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_4
    const-string v0, "PhotoTitle"

    const-string v0, ""

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 331
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #arrSNProviders:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 332
    sget-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    const-string v1, "prepareUpload() - starting to form intent for email sending through blur email service/receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_6
    new-instance v9, Landroid/content/Intent;

    .end local v9           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.SEND"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v0, "com.motorola.blur.util.messaging.QuickMessageUtil.Email"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->uri:Landroid/net/Uri;

    const-string v1, "image/jpeg"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v0, "android.intent.extra.EMAIL"

    new-array v1, v10, [Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->emailAddr:Ljava/lang/String;

    aput-object v4, v1, v5

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
