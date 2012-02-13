.class Lcom/android/internal/telephony/test/CallInfo;
.super Ljava/lang/Object;
.source "SimulatedGsmCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/CallInfo$State;
    }
.end annotation


# instance fields
.field TOA:I

.field isMT:Z

.field isMpty:Z

.field number:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/test/CallInfo$State;


# direct methods
.method constructor <init>(ZLcom/android/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V
    .locals 2
    .parameter "isMT"
    .parameter "state"
    .parameter "isMpty"
    .parameter "number"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/telephony/test/CallInfo;->isMT:Z

    iput-object p2, p0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-boolean p3, p0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    iput-object p4, p0, Lcom/android/internal/telephony/test/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/16 v0, 0x91

    iput v0, p0, Lcom/android/internal/telephony/test/CallInfo;->TOA:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/internal/telephony/test/CallInfo;->TOA:I

    goto :goto_0
.end method

.method static createIncomingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;
    .locals 4
    .parameter "number"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/test/CallInfo;-><init>(ZLcom/android/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V

    return-object v0
.end method

.method static createOutgoingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/test/CallInfo;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    invoke-direct {v0, v2, v1, v2, p0}, Lcom/android/internal/telephony/test/CallInfo;-><init>(ZLcom/android/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method isActiveOrHeld()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnecting()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRinging()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toCLCCLine(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    const-string v4, "1"

    const-string v3, "0"

    const-string v2, ","

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+CLCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/test/CallInfo;->isMT:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    move-object v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/CallInfo$State;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    move-object v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/test/CallInfo;->TOA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "0"

    move-object v1, v3

    goto :goto_0

    :cond_1
    const-string v1, "0"

    move-object v1, v3

    goto :goto_1
.end method

.method toDriverCall(I)Lcom/android/internal/telephony/DriverCall;
    .locals 4
    .parameter "index"

    .prologue
    new-instance v1, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .local v1, ret:Lcom/android/internal/telephony/DriverCall;
    iput p1, v1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget-boolean v2, p0, Lcom/android/internal/telephony/test/CallInfo;->isMT:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/test/CallInfo$State;->value()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;
    :try_end_0
    .catch Lcom/android/internal/telephony/ATParseEx; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    iget-object v2, p0, Lcom/android/internal/telephony/test/CallInfo;->number:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/test/CallInfo;->TOA:I

    iput v2, v1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/DriverCall;->als:I

    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Lcom/android/internal/telephony/ATParseEx;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "should never happen"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
