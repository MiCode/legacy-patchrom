.class Lcom/android/settings/DisplaySettings$OrientationObserver;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 2
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$OrientationObserver;->this$0:Lcom/android/settings/DisplaySettings;

    .line 401
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 402
    const-string v0, "DisplaySettings"

    const-string v1, "OrientationObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 407
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 408
    const-string v0, "DisplaySettings"

    const-string v1, "OrientationObserver().onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$OrientationObserver;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$200(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$OrientationObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    return-void

    :cond_0
    move v1, v3

    .line 409
    goto :goto_0
.end method
