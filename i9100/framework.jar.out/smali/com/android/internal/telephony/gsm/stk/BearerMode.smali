.class Lcom/android/internal/telephony/gsm/stk/BearerMode;
.super Ljava/lang/Object;
.source "BearerDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/BearerMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isAutoReconnect:Z

.field public isBackgroundMode:Z

.field public isOnDemand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/BearerMode$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/BearerMode$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isAutoReconnect:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isAutoReconnect:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    .line 82
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 84
    .local v0, tempBooleanArray:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 85
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 89
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isAutoReconnect:Z

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 92
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/BearerMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/BearerMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 101
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 103
    .local v0, tempBooleanArray:[Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    aput-boolean v1, v0, v2

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 106
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isAutoReconnect:Z

    aput-boolean v1, v0, v2

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 109
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    aput-boolean v1, v0, v2

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 111
    return-void
.end method
