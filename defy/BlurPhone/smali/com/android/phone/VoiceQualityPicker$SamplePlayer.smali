.class Lcom/android/phone/VoiceQualityPicker$SamplePlayer;
.super Landroid/media/AsyncPlayer;
.source "VoiceQualityPicker.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceQualityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SamplePlayer"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/phone/VoiceQualityPicker$SamplePlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/phone/VoiceQualityPicker$SamplePlayer$1;

    invoke-direct {v0}, Lcom/android/phone/VoiceQualityPicker$SamplePlayer$1;-><init>()V

    sput-object v0, Lcom/android/phone/VoiceQualityPicker$SamplePlayer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "DBG: Phone App Voice Quality Player"

    invoke-direct {p0, v0}, Landroid/media/AsyncPlayer;-><init>(Ljava/lang/String;)V

    .line 163
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 172
    return-void
.end method
