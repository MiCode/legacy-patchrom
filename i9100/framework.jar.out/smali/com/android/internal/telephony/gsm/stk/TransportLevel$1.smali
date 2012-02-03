.class final Lcom/android/internal/telephony/gsm/stk/TransportLevel$1;
.super Ljava/lang/Object;
.source "TransportLevel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/TransportLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/TransportLevel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/stk/TransportLevel;
    .locals 2
    .parameter "in"

    .prologue
    .line 37
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/TransportLevel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/TransportLevel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/gsm/stk/TransportLevel;
    .locals 1
    .parameter "size"

    .prologue
    .line 41
    new-array v0, p1, [Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/TransportLevel$1;->newArray(I)[Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    move-result-object v0

    return-object v0
.end method
