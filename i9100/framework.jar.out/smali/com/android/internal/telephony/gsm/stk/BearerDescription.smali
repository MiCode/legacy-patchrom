.class public Lcom/android/internal/telephony/gsm/stk/BearerDescription;
.super Ljava/lang/Object;
.source "BearerDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final BEARER_CDMA:B = 0x8t

.field static final BEARER_CSD:B = 0x1t

.field static final BEARER_DEFAULT:B = 0x3t

.field static final BEARER_E_UTRAN:B = 0xbt

.field static final BEARER_GPRS:B = 0x2t

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/BearerDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

.field public bearerDefault:Z

.field public bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

.field public bearerType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/BearerDescription$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 16
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 17
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 18
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 16
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 17
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 18
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 33
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 34
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 35
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 36
    .local v0, tempBooleanArray:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 37
    aget-boolean v1, v0, v3

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/BearerDescription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/BearerDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-byte v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 46
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 49
    .local v0, tempBooleanArray:[Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    aput-boolean v1, v0, v2

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 51
    return-void
.end method
