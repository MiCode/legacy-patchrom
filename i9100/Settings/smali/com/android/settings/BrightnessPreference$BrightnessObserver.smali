.class Lcom/android/settings/BrightnessPreference$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessPreference;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference$BrightnessObserver;->this$0:Lcom/android/settings/BrightnessPreference;

    .line 279
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 280
    const-string v0, "BrightnessPreference"

    const-string v1, "BrightnessObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const-string v5, "BrightnessPreference"

    .line 285
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 286
    const-string v2, "BrightnessPreference"

    const-string v2, "BrightnessObserver().onChange()"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference$BrightnessObserver;->this$0:Lcom/android/settings/BrightnessPreference;

    #getter for: Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/settings/BrightnessPreference;->access$000(Lcom/android/settings/BrightnessPreference;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference$BrightnessObserver;->this$0:Lcom/android/settings/BrightnessPreference;

    #getter for: Lcom/android/settings/BrightnessPreference;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/BrightnessPreference;->access$100(Lcom/android/settings/BrightnessPreference;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, brightness:I
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference$BrightnessObserver;->this$0:Lcom/android/settings/BrightnessPreference;

    #getter for: Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/settings/BrightnessPreference;->access$000(Lcom/android/settings/BrightnessPreference;)Landroid/widget/SeekBar;

    move-result-object v2

    const/16 v3, 0x1e

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 291
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange() SCREEN_BRIGHTNESS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0           #brightness:I
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 294
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingNotFoundException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
