.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PAN:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "classInt"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 4
    .parameter "profile"

    .prologue
    const/high16 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    move v0, v2

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    move v0, v2

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/high16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    move v0, v2

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_4

    move v0, v2

    goto :goto_0

    :sswitch_4
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x414 -> :sswitch_0
        0x418 -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x540 -> :sswitch_1
        0x580 -> :sswitch_1
        0x594 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x404 -> :sswitch_2
        0x408 -> :sswitch_2
        0x420 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x100 -> :sswitch_3
        0x104 -> :sswitch_3
        0x108 -> :sswitch_3
        0x10c -> :sswitch_3
        0x110 -> :sswitch_3
        0x114 -> :sswitch_3
        0x118 -> :sswitch_3
        0x200 -> :sswitch_3
        0x204 -> :sswitch_3
        0x208 -> :sswitch_3
        0x20c -> :sswitch_3
        0x210 -> :sswitch_3
        0x214 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x100 -> :sswitch_4
        0x104 -> :sswitch_4
        0x108 -> :sswitch_4
        0x10c -> :sswitch_4
        0x110 -> :sswitch_4
        0x114 -> :sswitch_4
        0x118 -> :sswitch_4
        0x200 -> :sswitch_4
        0x204 -> :sswitch_4
        0x208 -> :sswitch_4
        0x20c -> :sswitch_4
        0x210 -> :sswitch_4
        0x214 -> :sswitch_4
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    .end local p1
    iget v1, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public getDeviceClass()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .locals 2
    .parameter "service"

    .prologue
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
