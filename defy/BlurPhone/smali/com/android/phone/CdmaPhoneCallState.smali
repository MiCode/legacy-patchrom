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

.field private mIsCdmaConferenceCall:Z

.field private mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mPreviousIsCdmaConferenceCall:Z

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
.method public cdmaPhoneCallStateInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 85
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 86
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mIsCdmaConferenceCall:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousIsCdmaConferenceCall:Z

    .line 90
    return-void
.end method

.method public getAddCallMenuStateAfterCallWaiting()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    return v0
.end method

.method public getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object v0
.end method

.method public getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object v0
.end method

.method public getPreviousCdmaConferenceState()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousIsCdmaConferenceCall:Z

    return v0
.end method

.method public isCdmaConferenceCall()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mIsCdmaConferenceCall:Z

    return v0
.end method

.method public isThreeWayCallOrigStateDialing()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    return v0
.end method

.method public resetCdmaPhoneCallState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 196
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 197
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mIsCdmaConferenceCall:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousIsCdmaConferenceCall:Z

    .line 201
    return-void
.end method

.method public setAddCallMenuStateAfterCallWaiting(Z)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 175
    return-void
.end method

.method public setCdmaConferenceState(Z)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mIsCdmaConferenceCall:Z

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousIsCdmaConferenceCall:Z

    .line 152
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mIsCdmaConferenceCall:Z

    .line 153
    return-void
.end method

.method public setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V
    .locals 4
    .parameter "newState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 104
    iput-object p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 107
    iput-boolean v2, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 115
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 117
    iput-boolean v3, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_1

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaPhoneCallState;->setCdmaConferenceState(Z)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaPhoneCallState;->setCdmaConferenceState(Z)V

    goto :goto_0
.end method

.method public setThreeWayCallOrigState(Z)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 144
    return-void
.end method
