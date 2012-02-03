.class public Lcom/android/internal/telephony/gsm/stk/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/Duration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public timeInterval:I

.field public timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Duration$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/Duration$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Duration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V
    .locals 0
    .parameter "timeInterval"
    .parameter "timeUnit"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeInterval:I

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeInterval:I

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/Duration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Duration;->timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
