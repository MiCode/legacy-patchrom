.class public Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;
.super Ljava/lang/Object;
.source "StkResponseMessage.java"


# instance fields
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    return-object v0
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    return-void
.end method
