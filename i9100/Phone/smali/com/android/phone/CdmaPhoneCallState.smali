.class public Lcom/android/phone/CdmaPhoneCallState;
.super Ljava/lang/Object;
.source "CdmaPhoneCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    }
.end annotation


# instance fields
.field private mAddCallMenuStateAfterCW:Z

.field private mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mThreeWayCallOrigStateDialing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public CdmaPhoneCallStateInit()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 77
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 80
    return-void
.end method

.method public IsThreeWayCallOrigStateDialing()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    return v0
.end method

.method public getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object v0
.end method

.method public getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object v0
.end method

.method public resetCdmaPhoneCallState()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 151
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 154
    return-void
.end method

.method public setAddCallMenuStateAfterCallWaiting(Z)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 137
    return-void
.end method

.method public setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 94
    iput-object p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 105
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 109
    :cond_0
    return-void
.end method

.method public setThreeWayCallOrigState(Z)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 123
    return-void
.end method
