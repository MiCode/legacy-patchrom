.class public Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;
.super Ljava/lang/Object;
.source "MediaScannerEngine.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MediaScannerEngine"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

.field private mContext:Landroid/content/Context;

.field private mFilesToScan:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNewuris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mScannerConnection:Landroid/media/MediaScannerConnection;

.field private medClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mNewuris:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    .line 40
    new-instance v0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;-><init>(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->medClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 72
    iput-object p1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mFilesToScan:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/media/MediaScannerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mScannerConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mNewuris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    return-object v0
.end method


# virtual methods
.method public scanFiles(Ljava/util/ArrayList;Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;)V
    .locals 3
    .parameter
    .parameter "callbackObj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mFilesToScan:Ljava/util/ArrayList;

    .line 78
    iput-object p2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    .line 79
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mFilesToScan:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->medClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mScannerConnection:Landroid/media/MediaScannerConnection;

    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0
.end method
