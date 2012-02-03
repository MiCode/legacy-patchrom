.class public Landroid/drm/mobile2/Drm2RingToneInfo;
.super Ljava/lang/Object;
.source "Drm2RingToneInfo.java"


# instance fields
.field public rtAlarmID:I

.field public rtAlarmPopup:I

.field public rtAlarmtype:I

.field public rtFileName:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmID:I

    .line 7
    iput v0, p0, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmtype:I

    .line 12
    iput v0, p0, Landroid/drm/mobile2/Drm2RingToneInfo;->rtAlarmPopup:I

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/drm/mobile2/Drm2RingToneInfo;->time:J

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/drm/mobile2/Drm2RingToneInfo;->rtFileName:Ljava/lang/String;

    return-void
.end method
