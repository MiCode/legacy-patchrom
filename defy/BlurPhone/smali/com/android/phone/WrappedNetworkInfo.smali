.class public Lcom/android/phone/WrappedNetworkInfo;
.super Ljava/lang/Object;
.source "WrappedNetworkInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/phone/WrappedNetworkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final carrierDisplayName:Ljava/lang/String;

.field public final is3g:Z

.field public final isCurrent:Z

.field public final ni:Lcom/android/internal/telephony/gsm/NetworkInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/NetworkInfo;Z)V
    .locals 3
    .parameter "ni"
    .parameter "isCurrentNetwork3g"

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/phone/WrappedNetworkInfo;->ni:Lcom/android/internal/telephony/gsm/NetworkInfo;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    const-string v1, " 3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/WrappedNetworkInfo;->is3g:Z

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getState()Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->CURRENT:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 30
    iput-boolean v2, p0, Lcom/android/phone/WrappedNetworkInfo;->isCurrent:Z

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/WrappedNetworkInfo;->is3g:Z

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/phone/WrappedNetworkInfo;->isCurrent:Z

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/android/phone/WrappedNetworkInfo;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/android/phone/WrappedNetworkInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/WrappedNetworkInfo;->compareTo(Lcom/android/phone/WrappedNetworkInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 38
    if-nez p1, :cond_0

    move v2, v3

    .line 44
    :goto_0
    return v2

    .line 40
    :cond_0
    instance-of v2, p1, Lcom/android/phone/WrappedNetworkInfo;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 42
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/phone/WrappedNetworkInfo;

    move-object v1, v0

    .line 44
    .local v1, wni:Lcom/android/phone/WrappedNetworkInfo;
    iget-object v2, p0, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
