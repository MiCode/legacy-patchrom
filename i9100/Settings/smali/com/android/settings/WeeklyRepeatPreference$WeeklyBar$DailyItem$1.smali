.class Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem$1;
.super Ljava/lang/Object;
.source "WeeklyRepeatPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;-><init>(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

.field final synthetic val$this$0:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;


# direct methods
.method constructor <init>(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem$1;->this$1:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    iput-object p2, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem$1;->val$this$0:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem$1;->this$1:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->this$0:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    #getter for: Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->access$100(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem$1;->this$1:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem$1;->this$1:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    #getter for: Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->mIsChecked:Z
    invoke-static {v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->access$200(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setChecked(Z)V

    .line 204
    :cond_0
    return-void

    .line 203
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
