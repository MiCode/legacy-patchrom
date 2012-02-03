.class public Lcom/android/internal/telephony/gsm/stk/BearerDefault;
.super Ljava/lang/Object;
.source "BearerDefault.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/BearerDefault;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public var1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/BearerDefault$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/BearerDefault$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/BearerDefault;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerDefault;->var1:I

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/BearerDefault$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/BearerDefault;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerDefault;->var1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    return-void
.end method
