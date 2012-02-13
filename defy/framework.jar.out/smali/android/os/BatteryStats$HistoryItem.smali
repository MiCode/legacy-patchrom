.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final CMD_OVERFLOW:B = 0x2t

.field public static final CMD_START:B = 0x1t

.field public static final CMD_UPDATE:B = 0x0t

.field public static final MOST_INTERESTING_STATES:I = 0x78000000

.field public static final STATE_AUDIO_ON_FLAG:I = 0x80000

.field public static final STATE_BATTERY_PLUGGED_FLAG:I = 0x40000000

.field public static final STATE_BLUETOOTH_ON_FLAG:I = 0x100000

.field public static final STATE_BRIGHTNESS_MASK:I = 0xf

.field public static final STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final STATE_DATA_CONNECTION_MASK:I = 0xf000

.field public static final STATE_DATA_CONNECTION_SHIFT:I = 0xc

.field public static final STATE_GPS_ON_FLAG:I = 0x10000000

.field public static final STATE_PHONE_IN_CALL_FLAG:I = 0x8000000

.field public static final STATE_PHONE_SCANNING_FLAG:I = 0x4000000

.field public static final STATE_PHONE_STATE_MASK:I = 0xf00

.field public static final STATE_PHONE_STATE_SHIFT:I = 0x8

.field public static final STATE_SCREEN_ON_FLAG:I = 0x20000000

.field public static final STATE_SENSOR_ON_FLAG:I = 0x10000

.field public static final STATE_SIGNAL_STRENGTH_MASK:I = 0xf0

.field public static final STATE_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final STATE_VIDEO_ON_FLAG:I = 0x40000

.field public static final STATE_WAKE_LOCK_FLAG:I = 0x20000

.field public static final STATE_WIFI_FULL_LOCK_FLAG:I = 0x800000

.field public static final STATE_WIFI_MULTICAST_ON_FLAG:I = 0x200000

.field public static final STATE_WIFI_ON_FLAG:I = 0x2000000

.field public static final STATE_WIFI_RUNNING_FLAG:I = 0x1000000

.field public static final STATE_WIFI_SCAN_LOCK_FLAG:I = 0x400000


# instance fields
.field public batteryHealth:B

.field public batteryLevel:B

.field public batteryPlugType:B

.field public batteryStatus:B

.field public batteryTemperature:C

.field public batteryVoltage:C

.field public cmd:B

.field public next:Landroid/os/BatteryStats$HistoryItem;

.field public states:I

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLandroid/os/Parcel;)V
    .locals 3
    .parameter "time"
    .parameter "src"

    .prologue
    const v2, 0xffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, bat:I
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shr-int/lit8 v1, v0, 0x10

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shr-int/lit8 v1, v0, 0x14

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shr-int/lit8 v1, v0, 0x18

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int v1, v0, v2

    int-to-char v1, v1

    iput-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v2

    int-to-char v1, v1

    iput-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public same(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 2
    .parameter "o"

    .prologue
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .parameter "time"
    .parameter "cmd"
    .parameter "o"

    .prologue
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-char v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iget-char v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget v0, p4, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .parameter "o"

    .prologue
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 v1, v1, 0xff

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xf

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v2, v2, 0x14

    const/high16 v3, 0xf0

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, 0xf00

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .local v0, bat:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x1

    and-int/2addr v2, v3

    or-int v0, v1, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
