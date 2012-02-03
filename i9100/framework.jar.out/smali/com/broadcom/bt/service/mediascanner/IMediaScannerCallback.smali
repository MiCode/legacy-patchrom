.class public interface abstract Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;
.super Ljava/lang/Object;
.source "IMediaScannerCallback.java"


# static fields
.field public static final mFilenames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;->mFilenames:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;->mUris:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract checkforError()Z
.end method

.method public abstract getUriForFilename(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract onResultsAvailable(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method
