.class public Lcom/android/settings/bluetooth/SettingsBtStatus;
.super Ljava/lang/Object;
.source "SettingsBtStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConnectionStatusSummary(I)I
    .locals 1
    .parameter "connectionStatus"

    .prologue
    const v0, 0x7f080058

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 54
    :pswitch_1
    const v0, 0x7f08005b

    goto :goto_0

    .line 56
    :pswitch_2
    const v0, 0x7f080059

    goto :goto_0

    .line 58
    :pswitch_3
    const v0, 0x7f08005a

    goto :goto_0

    .line 60
    :pswitch_4
    const v0, 0x7f08005c

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final getPairingStatusSummary(I)I
    .locals 1
    .parameter "bondState"

    .prologue
    .line 77
    packed-switch p0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 80
    :pswitch_0
    const v0, 0x7f080060

    goto :goto_0

    .line 84
    :pswitch_1
    const v0, 0x7f08005e

    goto :goto_0

    .line 86
    :pswitch_2
    const v0, 0x7f08005d

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final isConnectionStatusBusy(I)Z
    .locals 1
    .parameter "connectionStatus"

    .prologue
    .line 72
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isConnectionStatusConnected(I)Z
    .locals 2
    .parameter "connectionStatus"

    .prologue
    const/4 v1, 0x1

    .line 67
    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
