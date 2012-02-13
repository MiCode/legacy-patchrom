.class public Lcom/vzw/location/VzwLocation;
.super Landroid/location/Location;
.source "VzwLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_VALID_ALTITUDE_WRT_ELLIPSOID:I = 0x80

.field public static final GPS_VALID_ALTITUDE_WRT_SEA_LEVEL:I = 0x40

.field public static final GPS_VALID_FIX_ERROR:I = 0x100000

.field public static final GPS_VALID_FIX_MODE:I = 0x80000

.field public static final GPS_VALID_HEADING:I = 0x10

.field public static final GPS_VALID_HORIZONTAL_DILUTION_OF_PRECISION:I = 0x200

.field public static final GPS_VALID_LATITUDE:I = 0x2

.field public static final GPS_VALID_LONGITUDE:I = 0x4

.field public static final GPS_VALID_MAGNETIC_VARIATION:I = 0x20

.field public static final GPS_VALID_POSITION_DILUTION_OF_PRECISION:I = 0x100

.field public static final GPS_VALID_POSITION_UNCERTAINTY_ERROR:I = 0x40000

.field public static final GPS_VALID_SATELLITES_IN_VIEW:I = 0x2000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x10000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x8000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x4000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x20000

.field public static final GPS_VALID_SATELLITES_USED_PRNS:I = 0x1000

.field public static final GPS_VALID_SATELLITE_COUNT:I = 0x800

.field public static final GPS_VALID_SPEED:I = 0x8

.field public static final GPS_VALID_UTC_TIME:I = 0x1

.field public static final GPS_VALID_VERTICAL_DILUTION_OF_PRECISION:I = 0x400


# instance fields
.field private mAltWrtEllipsoid:F

.field private mAltWrtSeaLevel:F

.field private mFixMode:I

.field private mHdop:F

.field private mHorConf:F

.field private mMagVariation:F

.field private mMajorAxis:F

.field private mMajorAxisAngle:F

.field private mMinorAxis:F

.field private mPdop:F

.field private mValidFields:I

.field private mVdop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/vzw/location/VzwLocation$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwLocation$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput v2, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    iput v2, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwLocation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwLocation;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation;->set(Lcom/vzw/location/VzwLocation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getAltitudeWrtEllipsoid()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    return v0
.end method

.method public getAltitudeWrtSeaLevel()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    return v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    return v0
.end method

.method public getHorizontalConfidence()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    return v0
.end method

.method public getHorizontalDilutionOfPrecision()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    return v0
.end method

.method public getMagneticVariation()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    return v0
.end method

.method public getMajorAxis()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    return v0
.end method

.method public getMajorAxisAngle()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    return v0
.end method

.method public getMinorAxis()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    return v0
.end method

.method public getPositionDilutionOfPrecision()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    return v0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return v0
.end method

.method public getVerticalDilutionOfPrecision()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/location/Location;->reset()V

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    return-void
.end method

.method public set(Lcom/vzw/location/VzwLocation;)V
    .locals 1
    .parameter "l"

    .prologue
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mValidFields:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mHorConf:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mHdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mPdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mVdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    return-void
.end method

.method public setAltitudeWrtEllipsoid(F)V
    .locals 1
    .parameter "altWrtEllipsoid"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setAltitudeWrtSeaLevel(F)V
    .locals 1
    .parameter "altWrtSeaLevel"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setBearing(F)V
    .locals 1
    .parameter "bearing"

    .prologue
    invoke-super {p0, p1}, Landroid/location/Location;->setBearing(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setFixMode(I)V
    .locals 2
    .parameter "fixMode"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setHorizontalConfidence(F)V
    .locals 0
    .parameter "horConf"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    return-void
.end method

.method public setHorizontalDilutionOfPrecision(F)V
    .locals 1
    .parameter "hdop"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .parameter "latitude"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .parameter "longitude"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setMagneticVariation(F)V
    .locals 1
    .parameter "magVariation"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setMajorAxis(F)V
    .locals 2
    .parameter "majorAxis"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setMajorAxisAngle(F)V
    .locals 0
    .parameter "majorAxisAngle"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    return-void
.end method

.method public setMinorAxis(F)V
    .locals 0
    .parameter "minorAxis"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    return-void
.end method

.method public setPositionDilutionOfPrecision(F)V
    .locals 1
    .parameter "pdop"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .parameter "speed"

    .prologue
    invoke-super {p0, p1}, Landroid/location/Location;->setSpeed(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setVerticalDilutionOfPrecision(F)V
    .locals 1
    .parameter "vdop"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VzwLocation[mValidFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFixMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHorConf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMajorAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMajorAxisAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMinorAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltWrtEllipsoid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltWrtSeaLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMagVariation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    const-string v0, "VzwLocation"

    const-string v1, "VzwLocation writeToParcel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
