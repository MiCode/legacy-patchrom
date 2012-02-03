.class public Lcom/android/internal/telephony/gsm/stk/ResultException;
.super Lcom/android/internal/telephony/gsm/stk/StkException;
.source "ResultException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/ResultException$1;
    }
.end annotation


# instance fields
.field private mAdditionalInfo:I

.field private mResult:Lcom/android/internal/telephony/gsm/stk/ResultCode;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkException;-><init>()V

    .line 35
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultException$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/ResultException;->mResult:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/ResultException;->mAdditionalInfo:I

    .line 51
    return-void

    .line 44
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For result code, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", additional information must be given!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;I)V
    .locals 2
    .parameter "result"
    .parameter "additionalInfo"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkException;-><init>()V

    .line 56
    if-gez p2, :cond_0

    .line 57
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Additional info must be greater than zero!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/ResultException;->mResult:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 62
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/ResultException;->mAdditionalInfo:I

    .line 63
    return-void
.end method


# virtual methods
.method public additionalInfo()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/ResultException;->mAdditionalInfo:I

    return v0
.end method

.method public hasAdditionalInfo()Z
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/ResultException;->mAdditionalInfo:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public result()Lcom/android/internal/telephony/gsm/stk/ResultCode;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ResultException;->mResult:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    return-object v0
.end method
