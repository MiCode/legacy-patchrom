.class Lcom/vzw/location/VzwAuthRequest;
.super Ljava/lang/Object;
.source "VzwAuthRequest.java"


# instance fields
.field private appSession:Lcom/vzw/location/VzwGpsAppSession;

.field private authData:Lcom/vzw/location/VzwGpsConfigInit;

.field private authResult:I

.field private authState:I


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 1
    .parameter "appSession"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vzw/location/VzwAuthRequest;->appSession:Lcom/vzw/location/VzwGpsAppSession;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwAuthRequest;->authData:Lcom/vzw/location/VzwGpsConfigInit;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwAuthRequest;->authState:I

    return-void
.end method


# virtual methods
.method public getAppSession()Lcom/vzw/location/VzwGpsAppSession;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwAuthRequest;->appSession:Lcom/vzw/location/VzwGpsAppSession;

    return-object v0
.end method

.method public getAuthData()Lcom/vzw/location/VzwGpsConfigInit;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwAuthRequest;->authData:Lcom/vzw/location/VzwGpsConfigInit;

    return-object v0
.end method

.method public getAuthResult()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwAuthRequest;->authResult:I

    return v0
.end method

.method public getAuthState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwAuthRequest;->authState:I

    return v0
.end method

.method public setAppSession(Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 0
    .parameter "appSession"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwAuthRequest;->appSession:Lcom/vzw/location/VzwGpsAppSession;

    return-void
.end method

.method public setAuthData(Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 0
    .parameter "authData"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwAuthRequest;->authData:Lcom/vzw/location/VzwGpsConfigInit;

    return-void
.end method

.method public setAuthResult(I)V
    .locals 0
    .parameter "authResult"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwAuthRequest;->authResult:I

    return-void
.end method

.method public setAuthState(I)V
    .locals 0
    .parameter "state"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwAuthRequest;->authState:I

    return-void
.end method
