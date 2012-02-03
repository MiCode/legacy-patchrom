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

.field public static final PROFILE_BPP:I = 0x3

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_OPP:I = 0x2


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "classInt"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 3
    .parameter "profile"

    .prologue
    const/high16 v0, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    if-ne p1, v1, :cond_1

    .line 337
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 403
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    .line 350
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 348
    goto :goto_0

    .line 352
    :cond_1
    if-nez p1, :cond_3

    .line 355
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 356
    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    move v0, v2

    .line 365
    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 363
    goto :goto_0

    .line 367
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 368
    const/high16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 369
    goto :goto_0

    .line 372
    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    move v0, v2

    .line 388
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 386
    goto :goto_0

    .line 390
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 396
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 400
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 398
    goto :goto_0

    :cond_6
    move v0, v2

    .line 403
    goto :goto_0

    .line 343
    :sswitch_data_0
    .sparse-switch
        0x414 -> :sswitch_0
        0x418 -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch

    .line 359
    :sswitch_data_1
    .sparse-switch
        0x404 -> :sswitch_1
        0x408 -> :sswitch_1
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 372
    :sswitch_data_2
    .sparse-switch
        0x100 -> :sswitch_2
        0x104 -> :sswitch_2
        0x108 -> :sswitch_2
        0x10c -> :sswitch_2
        0x110 -> :sswitch_2
        0x114 -> :sswitch_2
        0x118 -> :sswitch_2
        0x200 -> :sswitch_2
        0x204 -> :sswitch_2
        0x208 -> :sswitch_2
        0x20c -> :sswitch_2
        0x210 -> :sswitch_2
        0x214 -> :sswitch_2
    .end sparse-switch

    .line 396
    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 67
    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_1

    .line 68
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    .end local p1
    iget v1, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v2

    .line 70
    goto :goto_0
.end method

.method public getDeviceClass()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .locals 2
    .parameter "service"

    .prologue
    .line 147
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
    .line 75
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
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
    .line 98
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
