.class public Lcom/android/internal/telephony/IccFileNotFound;
.super Lcom/android/internal/telephony/IccException;
.source "IccFileNotFound.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/telephony/IccException;-><init>()V

    .line 25
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .parameter "ef"

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICC EF Not Found 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
