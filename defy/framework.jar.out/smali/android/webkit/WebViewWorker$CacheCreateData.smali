.class Landroid/webkit/WebViewWorker$CacheCreateData;
.super Ljava/lang/Object;
.source "WebViewWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheCreateData"
.end annotation


# instance fields
.field mHeaders:Landroid/net/http/Headers;

.field mListener:Landroid/webkit/LoadListener;

.field mMimeType:Ljava/lang/String;

.field mPostId:J

.field mStatusCode:I

.field mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
