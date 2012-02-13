.class public interface abstract Landroid/os/LocalPowerManager;
.super Ljava/lang/Object;
.source "LocalPowerManager.java"


# static fields
.field public static final BUTTON_EVENT:I = 0x5

.field public static final CHEEK_EVENT:I = 0x1

.field public static final LONG_TOUCH_EVENT:I = 0x3

.field public static final OTHER_EVENT:I = 0x0

.field public static final POKE_LOCK_IGNORE_CHEEK_EVENTS:I = 0x1

.field public static final POKE_LOCK_IGNORE_TOUCH_AND_CHEEK_EVENTS:I = 0x8

.field public static final POKE_LOCK_MEDIUM_TIMEOUT:I = 0x4

.field public static final POKE_LOCK_SHORT_TIMEOUT:I = 0x2

.field public static final POKE_LOCK_TIMEOUT_MASK:I = 0x6

.field public static final TOUCH_EVENT:I = 0x2

.field public static final TOUCH_UP_EVENT:I = 0x4


# virtual methods
.method public abstract enableUserActivity(Z)V
.end method

.method public abstract goToSleep(J)V
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract setButtonBrightnessOverride(I)V
.end method

.method public abstract setKeyboardVisibility(Z)V
.end method

.method public abstract setScreenBrightnessOverride(I)V
.end method

.method public abstract userActivity(JZI)V
.end method
