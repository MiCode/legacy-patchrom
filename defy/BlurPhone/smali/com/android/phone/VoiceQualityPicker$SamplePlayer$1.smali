.class final Lcom/android/phone/VoiceQualityPicker$SamplePlayer$1;
.super Ljava/lang/Object;
.source "VoiceQualityPicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceQualityPicker$SamplePlayer;
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
        "Lcom/android/phone/VoiceQualityPicker$SamplePlayer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/VoiceQualityPicker$SamplePlayer;
    .locals 1
    .parameter "in"

    .prologue
    .line 152
    new-instance v0, Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    invoke-direct {v0}, Lcom/android/phone/VoiceQualityPicker$SamplePlayer;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/phone/VoiceQualityPicker$SamplePlayer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/phone/VoiceQualityPicker$SamplePlayer;
    .locals 1
    .parameter "size"

    .prologue
    .line 156
    new-array v0, p1, [Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/phone/VoiceQualityPicker$SamplePlayer$1;->newArray(I)[Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    move-result-object v0

    return-object v0
.end method
