.class public Lcom/motorola/blur/quickupload/OnlineAlbumUpload;
.super Landroid/app/Activity;
.source "OnlineAlbumUpload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static final ACTIVITY_CREATE:I = 0x0

.field public static final DATA_MANAGER_ACTIVITY:Ljava/lang/String; = "com.motorola.blur.datamanager.app.START_DATA_SAVER_MODE_ACTIVITY"

.field private static final DATA_SAVER_DIALOG:I = 0x4

.field private static final LARGE_UPLOAD_DIALOG:I = 0x5

.field private static final SETUP_IMAGE_DIALOG:I = 0x1

.field private static final SETUP_VIDEO_DIALOG:I = 0x2

.field private static final START_UPLOAD:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final UPLOAD_DIALOG:I = 0x3

.field private static final UPLOAD_TIMEOUT:I = 0xbb8

.field public static final UPLOAD_TYPE:Ljava/lang/String; = "uploadType"


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/blur/provider/SocialShare$AlbumData;",
            ">;"
        }
    .end annotation
.end field

.field private mCountPCS:I

.field private mHandler:Landroid/os/Handler;

.field private mImageEmailAddr:Ljava/lang/String;

.field private mImageProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

.field private mImageUploadComplete:Z

.field private mImageUserSelection:I

.field private mInitialized:Z

.field private mLargeUploadThreshold:J

.field private mMediaData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/blur/provider/SocialShare$MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupDialogAlreadyDisplayed:Z

.field private mSetupImages:Z

.field private mStartUpload:Z

.field private mUploadImages:Z

.field private mUploadOverWifiMode:I

.field private mUploadSize:J

.field private mUploadVideos:Z

.field private mUri:Landroid/net/Uri;

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEmailAddr:Ljava/lang/String;

.field private mVideoProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

.field private mVideoUserSelection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "OnlineAlbumUpload"

    sput-object v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mInitialized:Z

    .line 53
    iput-boolean v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageUploadComplete:Z

    .line 56
    iput-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 57
    iput v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageUserSelection:I

    .line 58
    iput-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageEmailAddr:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 61
    iput v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoUserSelection:I

    .line 62
    iput-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoEmailAddr:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mCountPCS:I

    .line 65
    iput-boolean v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mSetupImages:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mStartUpload:Z

    .line 67
    iput-boolean v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    .line 68
    iput-boolean v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    .line 69
    iput v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadOverWifiMode:I

    .line 74
    iput-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaIds:Ljava/util/ArrayList;

    .line 75
    iput-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaData:Ljava/util/ArrayList;

    .line 76
    iput-boolean v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mSetupDialogAlreadyDisplayed:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadSize:J

    .line 78
    const-wide/32 v0, 0x1e8480

    iput-wide v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mLargeUploadThreshold:J

    .line 525
    new-instance v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$8;

    invoke-direct {v0, p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$8;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)V

    iput-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mSetupDialogAlreadyDisplayed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mStartUpload:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mStartUpload:Z

    return p1
.end method

.method static synthetic access$202(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadOverWifiMode:I

    return p1
.end method

.method private analyzeShareContents()V
    .locals 12

    .prologue
    .line 750
    const/4 v5, 0x0

    .line 754
    .local v5, mediaData:Lcom/motorola/blur/provider/SocialShare$MediaData;
    iget-object v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mAlbums:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    .line 755
    iget-object v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/provider/SocialShare$AlbumData;

    .line 756
    .local v0, album:Lcom/motorola/blur/provider/SocialShare$AlbumData;
    iget-object v8, v0, Lcom/motorola/blur/provider/SocialShare$AlbumData;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 757
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 758
    invoke-static {p0, v7}, Lcom/motorola/blur/quickupload/Utils;->getUriData(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/blur/quickupload/Utils$UriData;

    move-result-object v1

    .line 759
    .local v1, data:Lcom/motorola/blur/quickupload/Utils$UriData;
    iget-wide v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadSize:J

    if-eqz v1, :cond_4

    iget-wide v10, v1, Lcom/motorola/blur/quickupload/Utils$UriData;->m_nSize:J

    long-to-int v10, v10

    :goto_1
    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadSize:J

    .line 761
    .end local v1           #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    :cond_2
    invoke-static {p0, v7}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->determineMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 762
    .local v6, mimeType:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 763
    const-string v8, "video"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 764
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    .line 769
    :cond_3
    :goto_2
    iget-boolean v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    if-eqz v8, :cond_1

    goto :goto_0

    .line 759
    .end local v6           #mimeType:Ljava/lang/String;
    .restart local v1       #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 765
    .end local v1           #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_5
    const-string v8, "image"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 766
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    goto :goto_2

    .line 774
    .end local v0           #album:Lcom/motorola/blur/provider/SocialShare$AlbumData;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_6
    iget-object v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    if-eqz v8, :cond_a

    .line 775
    const/4 v4, 0x0

    .line 776
    .local v4, index:I
    iget-object v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 777
    .restart local v7       #uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 778
    invoke-static {p0, v7}, Lcom/motorola/blur/quickupload/Utils;->getUriData(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/blur/quickupload/Utils$UriData;

    move-result-object v1

    .line 779
    .restart local v1       #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    iget-wide v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadSize:J

    if-eqz v1, :cond_b

    iget-wide v10, v1, Lcom/motorola/blur/quickupload/Utils$UriData;->m_nSize:J

    long-to-int v10, v10

    :goto_3
    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadSize:J

    .line 781
    .end local v1           #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    :cond_8
    invoke-static {p0, v7}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->determineMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 782
    .restart local v6       #mimeType:Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 783
    const-string v8, "video"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 784
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    .line 789
    :cond_9
    :goto_4
    iget-boolean v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    if-eqz v8, :cond_7

    .line 794
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_a
    return-void

    .line 779
    .restart local v1       #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #index:I
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 785
    .end local v1           #data:Lcom/motorola/blur/quickupload/Utils$UriData;
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_c
    const-string v8, "image"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 786
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    goto :goto_4
.end method

.method private checkDataSaverAndWifi()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 720
    invoke-static {p0}, Lcom/motorola/blur/quickupload/Utils;->isDataSaverOn(Landroid/content/Context;)Z

    move-result v0

    .line 722
    .local v0, isDSMEnabled:Z
    invoke-static {p0}, Lcom/motorola/blur/quickupload/Utils;->isWifiOn(Landroid/content/Context;)Z

    move-result v1

    .line 723
    .local v1, isWifiConnected:Z
    if-nez v1, :cond_2

    .line 724
    if-eqz v0, :cond_0

    .line 725
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->showDialog(I)V

    move v4, v8

    .line 742
    :goto_0
    return v4

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.motorola.blur.socialshare.large_image_threshold"

    invoke-static {v4, v5}, Lcom/motorola/blur/provider/DeviceSetup$AppSettings;->getAppSettings(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, strThreshold:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 731
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 732
    .local v3, threshold:Ljava/lang/Long;
    if-eqz v3, :cond_1

    .line 733
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mLargeUploadThreshold:J

    .line 736
    .end local v3           #threshold:Ljava/lang/Long;
    :cond_1
    iget-wide v4, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadSize:J

    iget-wide v6, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mLargeUploadThreshold:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 737
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->showDialog(I)V

    move v4, v8

    .line 738
    goto :goto_0

    .line 742
    .end local v2           #strThreshold:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private createDlgDataSaver()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 349
    const v3, 0x7f0c0171

    invoke-virtual {p0, v3}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, strTitle:Ljava/lang/String;
    const v3, 0x7f0c0172

    invoke-virtual {p0, v3}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, strMsg:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 358
    const v3, 0x104000a

    new-instance v4, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$4;

    invoke-direct {v4, p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$4;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    const v3, 0x30a0076

    new-instance v4, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$5;

    invoke-direct {v4, p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$5;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private createDlgLargeUpload()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 384
    const v5, 0x7f0c0177

    invoke-virtual {p0, v5}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, strTitle:Ljava/lang/String;
    const v5, 0x7f0c0178

    invoke-virtual {p0, v5}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, strMsg:Ljava/lang/String;
    const v5, 0x7f0c017a

    invoke-virtual {p0, v5}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, strUploadNow:Ljava/lang/String;
    const v5, 0x7f0c0179

    invoke-virtual {p0, v5}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, strUploadWifi:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 395
    new-instance v5, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$6;

    invoke-direct {v5, p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$6;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    new-instance v5, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$7;

    invoke-direct {v5, p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$7;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 414
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method private createSetupDialog(Z)Landroid/app/Dialog;
    .locals 7
    .parameter "isVideo"

    .prologue
    .line 219
    const v6, 0x7f0c015e

    invoke-virtual {p0, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, strTitle:Ljava/lang/String;
    const/4 v2, 0x0

    .line 221
    .local v2, strMsg:Ljava/lang/String;
    const v6, 0x7f0c0166

    invoke-virtual {p0, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, strSettings:Ljava/lang/String;
    const v6, 0x7f0c0168

    invoke-virtual {p0, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, strCancel:Ljava/lang/String;
    move v5, p1

    .line 225
    .local v5, videoFinal:Z
    if-eqz p1, :cond_0

    .line 226
    const v6, 0x7f0c0165

    invoke-virtual {p0, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    new-instance v6, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$1;

    invoke-direct {v6, p0, v5}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$1;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;Z)V

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    new-instance v6, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$2;

    invoke-direct {v6, p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$2;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)V

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 228
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v6, 0x7f0c0164

    invoke-virtual {p0, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private createUploadDialog()Landroid/app/Dialog;
    .locals 14

    .prologue
    .line 272
    const v9, 0x7f0c015e

    invoke-virtual {p0, v9}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, strTitle:Ljava/lang/String;
    const v9, 0x7f0c0167

    invoke-virtual {p0, v9}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, strCancel:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030032

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 281
    .local v7, uploadView:Landroid/view/View;
    const v9, 0x7f0b00dc

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 283
    .local v2, itemAddrsView:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 284
    .local v5, uploadString:Ljava/lang/String;
    const/4 v8, 0x0

    .line 285
    .local v8, videoUploadString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 286
    .local v1, imageUploadString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 288
    .local v6, uploadStringRes:I
    iget-boolean v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoUserSelection:I

    iget v10, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageUserSelection:I

    if-ne v9, v10, :cond_0

    .line 290
    iget v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoUserSelection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    iget-object v9, v9, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    iget-object v10, v10, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 292
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0163

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    iget-object v13, v13, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 300
    :cond_0
    :goto_0
    if-nez v5, :cond_3

    .line 301
    iget-boolean v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    if-eqz v9, :cond_1

    .line 302
    iget v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageUserSelection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 304
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0161

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    iget-object v13, v13, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 309
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    if-eqz v9, :cond_2

    .line 310
    iget v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoUserSelection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 312
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0162

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    iget-object v13, v13, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 318
    :cond_2
    :goto_2
    if-eqz v8, :cond_7

    if-eqz v1, :cond_7

    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 327
    :cond_3
    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 330
    new-instance v9, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$3;

    invoke-direct {v9, p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$3;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)V

    invoke-virtual {v0, v3, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 293
    :cond_4
    iget v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoUserSelection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoEmailAddr:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageEmailAddr:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoEmailAddr:Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageEmailAddr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0163

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoEmailAddr:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 306
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0161

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageEmailAddr:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 314
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0162

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoEmailAddr:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 321
    :cond_7
    if-eqz v8, :cond_8

    .line 322
    move-object v5, v8

    goto :goto_3

    .line 323
    :cond_8
    if-eqz v1, :cond_3

    .line 324
    move-object v5, v1

    goto :goto_3
.end method

.method public static determineMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 696
    const/4 v2, 0x0

    .line 697
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 699
    if-nez v2, :cond_0

    .line 700
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, uriString:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 702
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 703
    .local v0, dotPosition:I
    if-ltz v0, :cond_0

    .line 704
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, extension:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 706
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 711
    .end local v0           #dotPosition:I
    .end local v1           #extension:Ljava/lang/String;
    .end local v3           #uriString:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private loadPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, needsImageSetup:Z
    const/4 v1, 0x0

    .line 577
    .local v1, needsVideoSetup:Z
    iget-boolean v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    if-eqz v2, :cond_0

    .line 578
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->loadPreferences(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 582
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    if-eqz v2, :cond_1

    .line 583
    invoke-direct {p0, v3}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->loadPreferences(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 584
    const/4 v1, 0x1

    .line 587
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 588
    iput-boolean v3, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mInitialized:Z

    .line 590
    :cond_2
    return-void
.end method

.method private loadPreferences(Z)Z
    .locals 12
    .parameter "isVideo"

    .prologue
    const/4 v11, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 594
    const/4 v6, 0x0

    .line 596
    .local v6, onlineAlbumPreferences:Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 597
    const-string v8, "onlineAlbumVideoSettingsPrefs"

    invoke-virtual {p0, v8, v10}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 602
    :goto_0
    if-nez v6, :cond_1

    move v8, v10

    .line 692
    :goto_1
    return v8

    .line 599
    :cond_0
    const-string v8, "onlineAlbumSettingsPrefs"

    invoke-virtual {p0, v8, v10}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    goto :goto_0

    .line 608
    :cond_1
    const-string v8, "SELECTION"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 610
    .local v7, userSelection:I
    if-nez v7, :cond_2

    move v8, v10

    .line 617
    goto :goto_1

    .line 619
    :cond_2
    if-ne v7, v11, :cond_a

    .line 622
    const-string v8, "BLUR_ID"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 623
    .local v2, blur_id:I
    if-ne v2, v9, :cond_3

    move v8, v10

    .line 628
    goto :goto_1

    .line 638
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->updateActivePhotoServices(Landroid/content/ContentResolver;)V

    .line 639
    const/4 v1, 0x0

    .line 642
    .local v1, apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    const/4 v0, 0x0

    .line 643
    .local v0, accountIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_7

    .line 644
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    .line 649
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 651
    .local v4, i:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->getService(I)Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    move-result-object v1

    .line 652
    if-eqz v1, :cond_4

    iget v8, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    if-ne v8, v2, :cond_4

    .line 658
    .end local v4           #i:Ljava/lang/Integer;
    :cond_5
    if-eqz v1, :cond_9

    .line 659
    if-eqz p1, :cond_8

    .line 660
    iput-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 661
    iput v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoUserSelection:I

    .end local v0           #accountIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1           #apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    .end local v2           #blur_id:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    move v8, v11

    .line 692
    goto :goto_1

    .line 646
    .restart local v0       #accountIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v1       #apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    .restart local v2       #blur_id:I
    :cond_7
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    goto :goto_2

    .line 663
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_8
    iput-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 664
    iput v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageUserSelection:I

    goto :goto_3

    :cond_9
    move v8, v10

    .line 667
    goto :goto_1

    .line 672
    .end local v0           #accountIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1           #apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    .end local v2           #blur_id:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_a
    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 674
    if-eqz p1, :cond_b

    .line 675
    iput v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoUserSelection:I

    .line 680
    :goto_4
    const-string v8, "EMAIL_ADDRESS"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, emailAddr:Ljava/lang/String;
    if-nez v3, :cond_c

    move v8, v10

    .line 683
    goto :goto_1

    .line 677
    .end local v3           #emailAddr:Ljava/lang/String;
    :cond_b
    iput v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageUserSelection:I

    goto :goto_4

    .line 685
    .restart local v3       #emailAddr:Ljava/lang/String;
    :cond_c
    if-eqz p1, :cond_d

    .line 686
    iput-object v3, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoEmailAddr:Ljava/lang/String;

    goto :goto_3

    .line 688
    :cond_d
    iput-object v3, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageEmailAddr:Ljava/lang/String;

    goto :goto_3
.end method

.method private prepUpload()V
    .locals 4

    .prologue
    .line 177
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->showDialog(I)V

    .line 184
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 186
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 187
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 545
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 552
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->loadPreferences()V

    .line 553
    iget-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->checkDataSaverAndWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->prepUpload()V

    .line 570
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mSetupDialogAlreadyDisplayed:Z

    .line 571
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    if-eqz v0, :cond_2

    .line 564
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->showDialog(I)V

    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->finish()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->finish()V

    .line 834
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const-string v6, "android.intent.extra.STREAM"

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iput-boolean v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mSetupDialogAlreadyDisplayed:Z

    .line 91
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 92
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->finish()V

    .line 138
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v5, "com.motorola.blur.socialshare.MEDIA_IDS_KEY"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaIds:Ljava/util/ArrayList;

    .line 105
    iget-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaIds:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 106
    const-string v5, "com.motorola.blur.socialshare.MEDIA_ID_KEY"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, mediaId:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaIds:Ljava/util/ArrayList;

    .line 109
    iget-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v2           #mediaId:Ljava/lang/String;
    :cond_1
    const-string v5, "com.motorola.blur.socialshare.MEDIA_DATA_KEY"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaData:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUri:Landroid/net/Uri;

    .line 116
    iget-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_5

    .line 118
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 119
    .local v4, parcelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 120
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 121
    .local v3, p:Landroid/os/Parcelable;
    const-class v5, Landroid/net/Uri;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    .line 137
    .end local v3           #p:Landroid/os/Parcelable;
    .end local v4           #parcelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->analyzeShareContents()V

    goto :goto_0

    .line 123
    .restart local v3       #p:Landroid/os/Parcelable;
    .restart local v4       #parcelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3
    const-class v5, Lcom/motorola/blur/provider/SocialShare$AlbumData;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mAlbums:Ljava/util/ArrayList;

    goto :goto_1

    .line 130
    .end local v3           #p:Landroid/os/Parcelable;
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->finish()V

    goto :goto_1

    .line 133
    .end local v4           #parcelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    .line 134
    iget-object v5, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "nDialogId"
    .parameter "bundle"

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 213
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 201
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->createSetupDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 203
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->createSetupDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->createUploadDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->createDlgDataSaver()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_4
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->createDlgLargeUpload()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 842
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 843
    const/4 v0, 0x1

    .line 845
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 145
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->loadPreferences()V

    .line 147
    iget-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mInitialized:Z

    if-ne v0, v1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->checkDataSaverAndWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->prepUpload()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mSetupDialogAlreadyDisplayed:Z

    if-nez v0, :cond_0

    .line 162
    iget-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    if-nez v0, :cond_2

    .line 163
    invoke-virtual {p0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->showDialog(I)V

    goto :goto_0

    .line 164
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->showDialog(I)V

    goto :goto_0
.end method

.method protected sendUpload(Z)V
    .locals 23
    .parameter "isVideo"

    .prologue
    .line 435
    const/4 v9, 0x0

    .line 437
    .local v9, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 438
    .local v3, apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    const/4 v5, 0x0

    .line 439
    .local v5, emailAddress:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoUserSelection:I

    move/from16 v19, v0

    .line 441
    .local v19, userSelection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoEmailAddr:Ljava/lang/String;

    move-object v5, v0

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mVideoProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    move-object v3, v0

    .line 449
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v11, mediaDataArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/provider/SocialShare$MediaData;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v13, mediaIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v17, uriArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 456
    .local v18, uriCount:I
    const/4 v7, 0x0

    .line 457
    .local v7, idCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaIds:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaIds:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 460
    :cond_0
    const/4 v12, 0x0

    .line 461
    .local v12, mediaDataCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 464
    :cond_1
    const/4 v8, 0x0

    .local v8, index:I
    :goto_1
    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 466
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->determineMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 467
    .local v14, mimeType:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 468
    const-string v20, "video"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    if-nez p1, :cond_3

    :cond_2
    const-string v20, "image"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    if-nez p1, :cond_5

    .line 470
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    if-ge v8, v7, :cond_4

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaIds:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_4
    if-ge v8, v12, :cond_7

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 444
    .end local v7           #idCount:I
    .end local v8           #index:I
    .end local v11           #mediaDataArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/provider/SocialShare$MediaData;>;"
    .end local v12           #mediaDataCount:I
    .end local v13           #mediaIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #uriArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v18           #uriCount:I
    .end local v19           #userSelection:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageUserSelection:I

    move/from16 v19, v0

    .line 445
    .restart local v19       #userSelection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageEmailAddr:Ljava/lang/String;

    move-object v5, v0

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mImageProvider:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    move-object v3, v0

    goto/16 :goto_0

    .line 478
    .restart local v7       #idCount:I
    .restart local v8       #index:I
    .restart local v11       #mediaDataArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/provider/SocialShare$MediaData;>;"
    .restart local v12       #mediaDataCount:I
    .restart local v13       #mediaIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #mimeType:Ljava/lang/String;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v17       #uriArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v18       #uriCount:I
    :cond_7
    new-instance v10, Lcom/motorola/blur/provider/SocialShare$MediaData;

    invoke-direct {v10}, Lcom/motorola/blur/provider/SocialShare$MediaData;-><init>()V

    .line 479
    .local v10, md:Lcom/motorola/blur/provider/SocialShare$MediaData;
    iput-object v14, v10, Lcom/motorola/blur/provider/SocialShare$MediaData;->mMimeType:Ljava/lang/String;

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/motorola/blur/quickupload/Utils;->getMediaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/blur/quickupload/Utils$UriData;

    move-result-object v15

    .line 481
    .local v15, ud:Lcom/motorola/blur/quickupload/Utils$UriData;
    if-eqz v15, :cond_8

    .line 482
    move-object v0, v15

    iget-object v0, v0, Lcom/motorola/blur/quickupload/Utils$UriData;->m_strTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    iput-object v0, v1, Lcom/motorola/blur/provider/SocialShare$MediaData;->mTitle:Ljava/lang/String;

    .line 483
    move-object v0, v15

    iget-object v0, v0, Lcom/motorola/blur/quickupload/Utils$UriData;->m_strCaption:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    iput-object v0, v1, Lcom/motorola/blur/provider/SocialShare$MediaData;->mCaption:Ljava/lang/String;

    .line 485
    :cond_8
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 492
    .end local v7           #idCount:I
    .end local v8           #index:I
    .end local v10           #md:Lcom/motorola/blur/provider/SocialShare$MediaData;
    .end local v12           #mediaDataCount:I
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v15           #ud:Lcom/motorola/blur/quickupload/Utils$UriData;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #uriCount:I
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 495
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v4, arrSNProviders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_d

    move-object v0, v3

    iget-object v0, v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_3
    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v9, Landroid/content/Intent;

    .end local v9           #intent:Landroid/content/Intent;
    const-string v20, "com.motorola.blur.socialshare.UPLOAD_IMAGE_BLUR"

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v20, "com.motorola.blur.socialshare.WIFI_UPLOAD_KEY"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadOverWifiMode:I

    move/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    const-string v20, "com.motorola.blur.socialshare.PROVIDER_KEY"

    move-object v0, v9

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 502
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_a

    .line 503
    const-string v20, "com.motorola.blur.socialshare.MEDIA_IDS_KEY"

    move-object v0, v9

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 505
    :cond_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 506
    const-string v20, "com.motorola.blur.socialshare.MEDIA_DATA_KEY"

    move-object v0, v9

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 508
    :cond_b
    const-string v20, "com.motorola.blur.socialshare.UPLOAD_IMAGE_BLUR"

    move-object v0, v9

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 522
    .end local v4           #arrSNProviders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->sendBroadcast(Landroid/content/Intent;)V

    .line 523
    return-void

    .line 496
    .restart local v4       #arrSNProviders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    const-string v20, ""

    goto :goto_3

    .line 513
    .end local v4           #arrSNProviders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 514
    .restart local v16       #uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    .end local v9           #intent:Landroid/content/Intent;
    const-string v20, "android.intent.action.SEND"

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v20, "com.motorola.blur.util.messaging.QuickMessageUtil.Email"

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v20, "android.intent.category.DEFAULT"

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->determineMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v20, "android.intent.extra.EMAIL"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object v0, v9

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4
.end method

.method protected showToast()V
    .locals 11

    .prologue
    const v10, 0x7f0c0174

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 802
    const/4 v3, 0x0

    .line 803
    .local v3, strMsg:Ljava/lang/String;
    const/4 v4, 0x0

    .line 805
    .local v4, strTitle:Ljava/lang/String;
    const/4 v1, 0x0

    .line 806
    .local v1, numAlbums:I
    iget-object v6, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mAlbums:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 807
    iget-object v6, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 809
    :cond_0
    const/4 v2, 0x0

    .line 810
    .local v2, numUris:I
    iget-object v6, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 811
    iget-object v6, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 813
    :cond_1
    if-le v2, v8, :cond_2

    .line 814
    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v10, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 826
    :goto_0
    const v6, 0x7f0c0173

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 828
    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 829
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 830
    return-void

    .line 815
    .end local v5           #toast:Landroid/widget/Toast;
    :cond_2
    if-lez v1, :cond_4

    .line 816
    if-ne v1, v8, :cond_3

    .line 817
    iget-object v6, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/blur/provider/SocialShare$AlbumData;

    iget-object v4, v6, Lcom/motorola/blur/provider/SocialShare$AlbumData;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 819
    :cond_3
    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v10, v6}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 822
    :cond_4
    iget-object v6, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUri:Landroid/net/Uri;

    invoke-static {p0, v6}, Lcom/motorola/blur/quickupload/Utils;->getUriData(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/blur/quickupload/Utils$UriData;

    move-result-object v0

    .line 823
    .local v0, data:Lcom/motorola/blur/quickupload/Utils$UriData;
    if-eqz v0, :cond_5

    iget-object v6, v0, Lcom/motorola/blur/quickupload/Utils$UriData;->m_strFileName:Ljava/lang/String;

    move-object v4, v6

    :goto_1
    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    move-object v4, v6

    goto :goto_1
.end method

.method protected startUpload()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mAlbums:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mMediaIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadImages:Z

    if-eqz v0, :cond_1

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->sendUpload(Z)V

    .line 426
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mUploadVideos:Z

    if-eqz v0, :cond_2

    .line 427
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->sendUpload(Z)V

    .line 430
    :cond_2
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->setResult(ILandroid/content/Intent;)V

    .line 431
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->finish()V

    goto :goto_0
.end method
