.class Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
.super Ljava/lang/Object;
.source "EccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/EccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/gsm/EccTable$EccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field emergencyNumberWithSIM:Ljava/lang/String;

.field emergencyNumberWithoutSIM:Ljava/lang/String;

.field plmn:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "plmn"
    .parameter "emergencyNumberWithSIM"
    .parameter "emergencyNumberWithoutSIM"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->plmn:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/gsm/EccTable$EccEntry;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->plmn:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->compareTo(Lcom/android/internal/telephony/gsm/EccTable$EccEntry;)I

    move-result v0

    return v0
.end method
