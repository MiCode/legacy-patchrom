.class public final Lcom/android/launcher2/gadget/ClockGadgetIntentFactory;
.super Ljava/lang/Object;
.source "ClockGadgetIntentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v1, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v1, :cond_0

    .line 12
    const-string v1, "com.sec.android.app.clockpackage/.ClockPackage"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 17
    :goto_0
    return-object v0

    .line 15
    :cond_0
    const-string v1, "com.motorola.blur.alarmclock/.AlarmClock"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method
