.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$MotionRange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final KEYBOARD_TYPE_NONE:I = 0x0

.field public static final KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field private static final MOTION_RANGE_LAST:I = 0x8

.field public static final MOTION_RANGE_ORIENTATION:I = 0x8

.field public static final MOTION_RANGE_PRESSURE:I = 0x2

.field public static final MOTION_RANGE_SIZE:I = 0x3

.field public static final MOTION_RANGE_TOOL_MAJOR:I = 0x6

.field public static final MOTION_RANGE_TOOL_MINOR:I = 0x7

.field public static final MOTION_RANGE_TOUCH_MAJOR:I = 0x4

.field public static final MOTION_RANGE_TOUCH_MINOR:I = 0x5

.field public static final MOTION_RANGE_X:I = 0x0

.field public static final MOTION_RANGE_Y:I = 0x1

.field public static final SOURCE_ANY:I = -0x100

.field public static final SOURCE_CLASS_BUTTON:I = 0x1

.field public static final SOURCE_CLASS_MASK:I = 0xff

.field public static final SOURCE_CLASS_POINTER:I = 0x2

.field public static final SOURCE_CLASS_POSITION:I = 0x8

.field public static final SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final SOURCE_DPAD:I = 0x201

.field public static final SOURCE_KEYBOARD:I = 0x101

.field public static final SOURCE_MOUSE:I = 0x2002

.field public static final SOURCE_TOUCHPAD:I = 0x100008

.field public static final SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final SOURCE_TRACKBALL:I = 0x10004

.field public static final SOURCE_UNKNOWN:I


# instance fields
.field private mId:I

.field private mKeyboardType:I

.field private mMotionRanges:[Landroid/view/InputDevice$MotionRange;

.field private mName:Ljava/lang/String;

.field private mSources:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/InputDevice$MotionRange;

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:[Landroid/view/InputDevice$MotionRange;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/InputDevice$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/view/InputDevice;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/InputDevice;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/InputDevice;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private addMotionRange(IFFFF)V
    .locals 6
    .parameter "rangeType"
    .parameter "min"
    .parameter "max"
    .parameter "flat"
    .parameter "fuzz"

    .prologue
    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    new-instance v0, Landroid/view/InputDevice$MotionRange;

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/view/InputDevice$MotionRange;-><init>(FFFFLandroid/view/InputDevice$1;)V

    .local v0, range:Landroid/view/InputDevice$MotionRange;
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:[Landroid/view/InputDevice$MotionRange;

    aput-object v0, v1, p1

    .end local v0           #range:Landroid/view/InputDevice$MotionRange;
    :cond_0
    return-void
.end method

.method private appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 3
    .parameter "description"
    .parameter "rangeType"
    .parameter "rangeName"

    .prologue
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:[Landroid/view/InputDevice$MotionRange;

    aget-object v0, v1, p2

    .local v0, range:Landroid/view/InputDevice$MotionRange;
    if-eqz v0, :cond_0

    const-string v1, "  Range["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: min="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Landroid/view/InputDevice$MotionRange;->mMin:F
    invoke-static {v0}, Landroid/view/InputDevice$MotionRange;->access$300(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " max="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Landroid/view/InputDevice$MotionRange;->mMax:F
    invoke-static {v0}, Landroid/view/InputDevice$MotionRange;->access$400(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " flat="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Landroid/view/InputDevice$MotionRange;->mFlat:F
    invoke-static {v0}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " fuzz="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Landroid/view/InputDevice$MotionRange;->mFuzz:F
    invoke-static {v0}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1
    .parameter "description"
    .parameter "source"
    .parameter "sourceName"

    .prologue
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static getDevice(I)Landroid/view/InputDevice;
    .locals 4
    .parameter "id"

    .prologue
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .local v1, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not get input device information from Window Manager."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getDeviceIds()[I
    .locals 4

    .prologue
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .local v1, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->getInputDeviceIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not get input device ids from Window Manager."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, rangeType:I
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/InputDevice;->addMotionRange(IFFFF)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    return v0
.end method

.method public getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    return v0
.end method

.method public getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .locals 2
    .parameter "rangeType"

    .prologue
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested range is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:[Landroid/view/InputDevice$MotionRange;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "\n"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, description:Ljava/lang/StringBuilder;
    const-string v1, "Input Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Keyboard Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/InputDevice;->mKeyboardType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Sources:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x101

    const-string v2, "keyboard"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v1, 0x201

    const-string v2, "dpad"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v1, 0x1002

    const-string v2, "touchscreen"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v1, 0x2002

    const-string v2, "mouse"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const v1, 0x10004

    const-string v2, "trackball"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const v1, 0x100008

    const-string v2, "touchpad"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, "x"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "y"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "pressure"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "size"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "touchMajor"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "touchMinor"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x6

    const-string v2, "toolMajor"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x7

    const-string v2, "toolMinor"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v1, 0x8

    const-string v2, "orientation"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputDevice;->appendRangeDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "non-alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:[Landroid/view/InputDevice$MotionRange;

    aget-object v1, v2, v0

    .local v1, range:Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #getter for: Landroid/view/InputDevice$MotionRange;->mMin:F
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$300(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    #getter for: Landroid/view/InputDevice$MotionRange;->mMax:F
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$400(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    #getter for: Landroid/view/InputDevice$MotionRange;->mFlat:F
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    #getter for: Landroid/view/InputDevice$MotionRange;->mFuzz:F
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #range:Landroid/view/InputDevice$MotionRange;
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
