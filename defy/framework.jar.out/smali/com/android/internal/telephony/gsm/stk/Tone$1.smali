.class final Lcom/android/internal/telephony/gsm/stk/Tone$1;
.super Ljava/lang/Object;
.source "Tone.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/Tone;
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
        "Lcom/android/internal/telephony/gsm/stk/Tone;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/stk/Tone;
    .locals 2
    .parameter "in"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/Tone;->values()[Lcom/android/internal/telephony/gsm/stk/Tone;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/Tone$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/stk/Tone;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/gsm/stk/Tone;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Lcom/android/internal/telephony/gsm/stk/Tone;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/Tone$1;->newArray(I)[Lcom/android/internal/telephony/gsm/stk/Tone;

    move-result-object v0

    return-object v0
.end method
