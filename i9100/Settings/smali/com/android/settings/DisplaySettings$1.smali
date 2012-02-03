.class Lcom/android/settings/DisplaySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "DisplaySettings"

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v2, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver.onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    const-string v3, "temperature"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/settings/DisplaySettings;->mBattTemperature:I
    invoke-static {v2, v3}, Lcom/android/settings/DisplaySettings;->access$002(Lcom/android/settings/DisplaySettings;I)I

    .line 110
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mBattTemperature:I
    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)I

    move-result v2

    if-nez v2, :cond_1

    .line 111
    const-string v2, "DisplaySettings"

    const-string v2, "mIntentReceiver.onReceive: BatteryManager.EXTRA_TEMPERATURE return 0"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    const-string v2, "level"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_3

    .line 121
    const-string v2, "status"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, battStatus:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;
    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/BrightnessPreference;->setEnabled(Z)V

    .line 130
    .end local v1           #battStatus:I
    :cond_0
    :goto_1
    return-void

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v3, v3, Lcom/android/settings/DisplaySettings;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/DisplaySettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 115
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v2, v2, Lcom/android/settings/DisplaySettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "battery_temperature"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mBattTemperature:I
    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v2, v2, Lcom/android/settings/DisplaySettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    const-string v2, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver.onReceive: Battery temperature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mBattTemperature:I
    invoke-static {v3}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .restart local v1       #battStatus:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;
    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/settings/BrightnessPreference;->setEnabled(Z)V

    goto :goto_1

    .line 128
    .end local v1           #battStatus:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;
    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/BrightnessPreference;->setEnabled(Z)V

    goto :goto_1
.end method
