.class public Lcom/broadcom/bt/service/map/MapClientSession;
.super Ljava/lang/Object;
.source "MapClientSession.java"


# instance fields
.field mBelongsTo:Lcom/broadcom/bt/service/map/MapProviderContext;

.field mDeviceName:Ljava/lang/String;

.field mProviderCurrentPath:Ljava/lang/String;

.field mProviderRootPath:Ljava/lang/String;

.field mSessionId:I


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/MapProviderContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "belongsTo"
    .parameter "providerRootPath"
    .parameter "sessionId"
    .parameter "deviceName"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapClientSession;->mBelongsTo:Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 29
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapClientSession;->mBelongsTo:Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 30
    iput-object p2, p0, Lcom/broadcom/bt/service/map/MapClientSession;->mProviderRootPath:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapClientSession;->mProviderRootPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapClientSession;->mProviderCurrentPath:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/broadcom/bt/service/map/MapClientSession;->mSessionId:I

    .line 33
    iput-object p4, p0, Lcom/broadcom/bt/service/map/MapClientSession;->mDeviceName:Ljava/lang/String;

    .line 34
    return-void
.end method
