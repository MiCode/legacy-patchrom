.class public Lcom/android/internal/telephony/cdma/CsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "CsimFileHandler.java"


# static fields
.field static final DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 2
    .parameter "phone"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const-string v0, "CDMA"

    const-string v1, "[CsimFileHandler] initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "[CsimFileHandler] finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .parameter "efid"

    .prologue
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CsimFileHandler] getEFPath for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6f3a -> :sswitch_0
        0x6f41 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method
