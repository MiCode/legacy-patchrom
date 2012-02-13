.class public abstract Landroid/view/InputEvent;
.super Ljava/lang/Object;
.source "InputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PARCEL_TOKEN_KEY_EVENT:I = 0x2

.field protected static final PARCEL_TOKEN_MOTION_EVENT:I = 0x1


# instance fields
.field protected mDeviceId:I

.field protected mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/InputEvent$1;

    invoke-direct {v0}, Landroid/view/InputEvent$1;-><init>()V

    sput-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final getDevice()Landroid/view/InputDevice;
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    return v0
.end method

.method public final getSource()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputEvent;->mSource:I

    return v0
.end method

.method protected final readBaseFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputEvent;->mSource:I

    return-void
.end method

.method public final setSource(I)V
    .locals 0
    .parameter "source"

    .prologue
    iput p1, p0, Landroid/view/InputEvent;->mSource:I

    return-void
.end method

.method protected final writeBaseToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InputEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
