.class Lcom/vzw/location/VzwGpsRequest;
.super Ljava/lang/Object;
.source "VzwGpsRequest.java"


# static fields
.field public static final MOT_GPS_REQ_STATE_INIT:I = 0x0

.field public static final MOT_GPS_REQ_STATE_LOC_UPDATE_DONE:I = 0x2

.field public static final MOT_GPS_REQ_STATE_LOC_UPDATE_IN_PROG:I = 0x1

.field public static final MOT_GPS_REQ_STATE_LOC_UPDATE_SUSPENDED:I = 0x3


# instance fields
.field private activeCfg:Z

.field private activeIP:Z

.field private appSession:Lcom/vzw/location/VzwGpsAppSession;

.field private criteria:Lcom/vzw/location/VzwCriteria;

.field private fixesReported:J

.field private gpsReqState:I

.field private lastUpdated:J

.field private locationListener:Lcom/vzw/location/IVzwLocationListener;


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwGpsAppSession;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 2
    .parameter "appSession"
    .parameter "criteria"
    .parameter "locationListener"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vzw/location/VzwGpsRequest;->appSession:Lcom/vzw/location/VzwGpsAppSession;

    iput-object p2, p0, Lcom/vzw/location/VzwGpsRequest;->criteria:Lcom/vzw/location/VzwCriteria;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsRequest;->gpsReqState:I

    iput-object p3, p0, Lcom/vzw/location/VzwGpsRequest;->locationListener:Lcom/vzw/location/IVzwLocationListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->lastUpdated:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->fixesReported:J

    return-void
.end method


# virtual methods
.method public getAppSession()Lcom/vzw/location/VzwGpsAppSession;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsRequest;->appSession:Lcom/vzw/location/VzwGpsAppSession;

    return-object v0
.end method

.method public getGpsConfig()Lcom/vzw/location/VzwCriteria;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsRequest;->criteria:Lcom/vzw/location/VzwCriteria;

    return-object v0
.end method

.method public getLocationListener()Lcom/vzw/location/IVzwLocationListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsRequest;->locationListener:Lcom/vzw/location/IVzwLocationListener;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsRequest;->gpsReqState:I

    return v0
.end method

.method public getfixesReported()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->fixesReported:J

    return-wide v0
.end method

.method public getlastUpdated()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->lastUpdated:J

    return-wide v0
.end method

.method public incrementFixesReported()V
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->fixesReported:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->fixesReported:J

    return-void
.end method

.method public isActiveCfg()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsRequest;->activeCfg:Z

    return v0
.end method

.method public isActiveIP()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsRequest;->activeIP:Z

    return v0
.end method

.method public setActiveCfg(Z)V
    .locals 0
    .parameter "activeCfg"

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsRequest;->activeCfg:Z

    return-void
.end method

.method public setActiveIP(Z)V
    .locals 0
    .parameter "activeIP"

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsRequest;->activeIP:Z

    return-void
.end method

.method public setAppSession(Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 0
    .parameter "appSession"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsRequest;->appSession:Lcom/vzw/location/VzwGpsAppSession;

    return-void
.end method

.method public setGpsConfig(Lcom/vzw/location/VzwCriteria;)V
    .locals 0
    .parameter "criteria"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsRequest;->criteria:Lcom/vzw/location/VzwCriteria;

    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsRequest;->gpsReqState:I

    return-void
.end method

.method public setlastUpdated(J)V
    .locals 0
    .parameter "t"

    .prologue
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsRequest;->lastUpdated:J

    return-void
.end method
