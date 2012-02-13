.class public Lcom/motorola/android/telephony/ISIMAuthRes;
.super Ljava/lang/Object;
.source "ISIMAuthRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/ISIMAuthRes;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "ISIM"


# instance fields
.field public auts:[B

.field public auts_length:I

.field public ck:[B

.field public ck_length:I

.field public ik:[B

.field public ik_length:I

.field public res:[B

.field public res_length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/telephony/ISIMAuthRes$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/ISIMAuthRes$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/ISIMAuthRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BI[BI[BI[B)V
    .locals 1
    .parameter "res_length"
    .parameter "res"
    .parameter "ik_length"
    .parameter "ik"
    .parameter "ck_length"
    .parameter "ck"
    .parameter "auts_length"
    .parameter "auts"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res_length:I

    iput v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik_length:I

    iput v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck_length:I

    iput v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts_length:I

    iput p1, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res_length:I

    iput-object p2, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res:[B

    iput p3, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik_length:I

    iput-object p4, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik:[B

    iput p5, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck_length:I

    iput-object p6, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck:[B

    iput p7, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts_length:I

    iput-object p8, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
