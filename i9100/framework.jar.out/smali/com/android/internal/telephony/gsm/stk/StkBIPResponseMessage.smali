.class public Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;
.super Ljava/lang/Object;
.source "StkBIPResponseMessage.java"


# instance fields
.field AdditionalInfo:I

.field data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

.field hasAdditionalInfo:Z

.field mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

.field resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .locals 0
    .parameter "cmd"
    .parameter "r"
    .parameter "AddInfoPresent"
    .parameter "AddInfo"
    .parameter "d"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 50
    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    .line 51
    iput p4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    .line 52
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 55
    return-void
.end method
