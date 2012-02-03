.class Lcom/android/settings/ButtonPreference$2;
.super Ljava/lang/Object;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ButtonPreference;->onBindView(Landroid/view/View;)V
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
    .line 171
    iput-object p1, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v3, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v3}, Lcom/android/settings/ButtonPreference;->access$700(Lcom/android/settings/ButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v3}, Lcom/android/settings/ButtonPreference;->access$700(Lcom/android/settings/ButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/TimePickerDialog;->dismiss()V

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v3}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "key_auto_silent_pref"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 179
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 180
    .local v0, hour:I
    const/4 v1, 0x0

    .line 182
    .local v1, minute:I
    iget-object v3, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v3}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/ButtonPreference;->access$200(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    const-string v3, "key_hour_start"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 184
    const-string v3, "key_minute_start"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 190
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v3}, Lcom/android/settings/ButtonPreference;->access$700(Lcom/android/settings/ButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 191
    iget-object v3, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v3}, Lcom/android/settings/ButtonPreference;->access$700(Lcom/android/settings/ButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/TimePickerDialog;->show()V

    .line 192
    return-void

    .line 185
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v3}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ButtonPreference$2;->this$0:Lcom/android/settings/ButtonPreference;

    #getter for: Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/ButtonPreference;->access$200(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    const-string v3, "key_hour_end"

    const/4 v4, 0x7

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 187
    const-string v3, "key_minute_end"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method
