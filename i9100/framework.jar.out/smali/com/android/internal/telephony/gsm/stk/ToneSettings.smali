.class public Lcom/android/internal/telephony/gsm/stk/ToneSettings;
.super Ljava/lang/Object;
.source "ToneSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ToneSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:Lcom/android/internal/telephony/gsm/stk/Duration;

.field public tone:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ToneSettings$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/ToneSettings$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/Duration;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 39
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->tone:Lcom/android/internal/telephony/gsm/stk/Tone;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->vibrate:Z

    .line 41
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/ToneSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ToneSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/Duration;Lcom/android/internal/telephony/gsm/stk/Tone;Z)V
    .locals 0
    .parameter "duration"
    .parameter "tone"
    .parameter "vibrate"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 33
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->tone:Lcom/android/internal/telephony/gsm/stk/Tone;

    .line 34
    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->vibrate:Z

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->tone:Lcom/android/internal/telephony/gsm/stk/Tone;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->vibrate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0
.end method
