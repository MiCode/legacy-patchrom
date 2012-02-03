.class public Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;
.super Ljava/lang/Object;
.source "StkResponseMessage.java"


# instance fields
.field additionalInfo:Z

.field additionalInfoData:I

.field cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

.field resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfoData:I

    .line 30
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 31
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo(Z)V
    .locals 0
    .parameter "additionalInfo"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    .line 55
    return-void
.end method

.method public setAdditionalInfoData(I)V
    .locals 0
    .parameter "additionalInfoData"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfoData:I

    .line 59
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    .line 51
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    .line 39
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 35
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    .line 47
    return-void
.end method
