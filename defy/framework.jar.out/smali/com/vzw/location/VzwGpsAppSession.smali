.class Lcom/vzw/location/VzwGpsAppSession;
.super Ljava/lang/Object;
.source "VzwGpsAppSession.java"


# instance fields
.field private authReq:Lcom/vzw/location/VzwAuthRequest;

.field private gpsRequest:Lcom/vzw/location/VzwGpsRequest;

.field private mPendingBroadcasts:I

.field private pid:I

.field private statusListener:Lcom/vzw/location/IVzwGpsStatusListener;

.field private uid:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "uid"
    .parameter "pid"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vzw/location/VzwGpsAppSession;->uid:I

    iput p2, p0, Lcom/vzw/location/VzwGpsAppSession;->pid:I

    iput-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->statusListener:Lcom/vzw/location/IVzwGpsStatusListener;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->gpsRequest:Lcom/vzw/location/VzwGpsRequest;

    new-instance v0, Lcom/vzw/location/VzwAuthRequest;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwAuthRequest;-><init>(Lcom/vzw/location/VzwGpsAppSession;)V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->authReq:Lcom/vzw/location/VzwAuthRequest;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mPendingBroadcasts:I

    return-void
.end method


# virtual methods
.method public getAuthRequest()Lcom/vzw/location/VzwAuthRequest;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->authReq:Lcom/vzw/location/VzwAuthRequest;

    return-object v0
.end method

.method public getGpsRequest()Lcom/vzw/location/VzwGpsRequest;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->gpsRequest:Lcom/vzw/location/VzwGpsRequest;

    return-object v0
.end method

.method public getPendingBroadcasts()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mPendingBroadcasts:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsAppSession;->pid:I

    return v0
.end method

.method public getStatusListener()Lcom/vzw/location/IVzwGpsStatusListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->statusListener:Lcom/vzw/location/IVzwGpsStatusListener;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsAppSession;->uid:I

    return v0
.end method

.method public setAuthRequest(Lcom/vzw/location/VzwAuthRequest;)V
    .locals 0
    .parameter "authReq"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAppSession;->authReq:Lcom/vzw/location/VzwAuthRequest;

    return-void
.end method

.method public setGpsRequest(Lcom/vzw/location/VzwGpsRequest;)V
    .locals 0
    .parameter "gpsReq"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAppSession;->gpsRequest:Lcom/vzw/location/VzwGpsRequest;

    return-void
.end method

.method public setPendingBroadcasts(I)V
    .locals 0
    .parameter "pendingBroadcases"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mPendingBroadcasts:I

    return-void
.end method

.method public setStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 0
    .parameter "sl"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAppSession;->statusListener:Lcom/vzw/location/IVzwGpsStatusListener;

    return-void
.end method

.method public setVZCriteria(Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 1
    .parameter "authData"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->authReq:Lcom/vzw/location/VzwAuthRequest;

    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwAuthRequest;->setAuthData(Lcom/vzw/location/VzwGpsConfigInit;)V

    return-void
.end method
