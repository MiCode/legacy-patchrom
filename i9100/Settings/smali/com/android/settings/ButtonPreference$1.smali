.class Lcom/android/settings/ButtonPreference$1;
.super Ljava/lang/Object;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ButtonPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 9
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, otherHour:I
    const/4 v5, 0x0

    .line 81
    .local v5, otherMin:I
    const/4 v2, 0x0

    .line 82
    .local v2, oldhour:I
    const/4 v3, 0x0

    .line 83
    .local v3, oldminute:I
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    iget-object v7, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v7, p2, p3}, Lcom/android/settings/ButtonPreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/settings/ButtonPreference;->mTimeButtonText:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings/ButtonPreference;->access$002(Lcom/android/settings/ButtonPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$100(Lcom/android/settings/ButtonPreference;)Landroid/widget/Toast;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 86
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$100(Lcom/android/settings/ButtonPreference;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 88
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/ButtonPreference;->access$200(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$300(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_hour_end"

    const/4 v8, 0x7

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 90
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$300(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_minute_end"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 91
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$300(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_hour_start"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 92
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$300(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_minute_start"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 100
    :cond_1
    :goto_0
    if-ne v4, p2, :cond_5

    if-ne v5, p3, :cond_5

    .line 101
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    const/4 v7, 0x1

    #setter for: Lcom/android/settings/ButtonPreference;->isSame:Z
    invoke-static {v6, v7}, Lcom/android/settings/ButtonPreference;->access$402(Lcom/android/settings/ButtonPreference;Z)Z

    .line 105
    :goto_1
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->isSame:Z
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$400(Lcom/android/settings/ButtonPreference;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 106
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mTimeButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$500(Lcom/android/settings/ButtonPreference;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mTimeButtonText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/ButtonPreference;->access$000(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/ButtonPreference;->access$200(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 108
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$600(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_hour_start"

    invoke-interface {v6, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$600(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_minute_start"

    invoke-interface {v6, v7, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$600(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AutoSilentSettings;->registerAutoSilentAlarm(Landroid/content/Context;)V

    .line 118
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/AutoSilentSettings;->isASMOnOffWillChange(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 119
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    .line 121
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.settings.AUTO_SILENT_START_ACTION"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "ext_key_changed_by_user"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    .end local v1           #intent:Landroid/content/Intent;
    :goto_3
    return-void

    .line 93
    .end local v0           #appContext:Landroid/content/Context;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/ButtonPreference;->access$200(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$300(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_hour_start"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 95
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$300(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_minute_start"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 96
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$300(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_hour_end"

    const/4 v8, 0x7

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 97
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$300(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_minute_end"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_0

    .line 103
    :cond_5
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    const/4 v7, 0x0

    #setter for: Lcom/android/settings/ButtonPreference;->isSame:Z
    invoke-static {v6, v7}, Lcom/android/settings/ButtonPreference;->access$402(Lcom/android/settings/ButtonPreference;Z)Z

    goto/16 :goto_1

    .line 110
    :cond_6
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/ButtonPreference;->access$200(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$600(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_hour_end"

    invoke-interface {v6, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$600(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_minute_end"

    invoke-interface {v6, v7, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 126
    :cond_7
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    iget-object v7, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v7, v2, v3}, Lcom/android/settings/ButtonPreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/settings/ButtonPreference;->mTimeButtonText:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings/ButtonPreference;->access$002(Lcom/android/settings/ButtonPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mTimeButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$500(Lcom/android/settings/ButtonPreference;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mTimeButtonText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/ButtonPreference;->access$000(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .restart local v0       #appContext:Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    const v7, 0x7f0800d1

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    #setter for: Lcom/android/settings/ButtonPreference;->mToast:Landroid/widget/Toast;
    invoke-static {v6, v7}, Lcom/android/settings/ButtonPreference;->access$102(Lcom/android/settings/ButtonPreference;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 130
    iget-object v6, p0, Lcom/android/settings/ButtonPreference$1;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/ButtonPreference;->access$100(Lcom/android/settings/ButtonPreference;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3
.end method
