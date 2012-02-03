.class public final Lcom/android/systemui/statusbar/DeviceCustomization;
.super Ljava/lang/Object;
.source "DeviceCustomization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignalLevel(Landroid/telephony/SignalStrength;I)I
    .locals 2
    .parameter "strength"
    .parameter "iconLevel"

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v0

    .line 13
    .local v0, level:I
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    .line 14
    :cond_0
    return v0
.end method
