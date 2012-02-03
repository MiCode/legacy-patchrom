.class public Lcom/android/settings/WeeklyRepeatPreference;
.super Landroid/preference/Preference;
.source "WeeklyRepeatPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
    }
.end annotation


# instance fields
.field private mRepeatText:Ljava/lang/String;

.field private mRepeatTextView:Landroid/widget/TextView;

.field private mWeeklyBar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/WeeklyRepeatPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0x80

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const v2, 0x7f03004d

    invoke-virtual {p0, v2}, Lcom/android/settings/WeeklyRepeatPreference;->setLayoutResource(I)V

    .line 34
    const-string v2, "key_auto_silent_pref"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "key_repeat_days"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, repeat:I
    if-ne v0, v4, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatText:Ljava/lang/String;

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getWeeklyBar()Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatPreference;->mWeeklyBar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 63
    const v1, 0x7f0b00ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    iput-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mWeeklyBar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    .line 64
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mWeeklyBar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->setEditMode(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mWeeklyBar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    invoke-virtual {v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->refreshWeeklyBar()V

    .line 67
    const v1, 0x7f0b00ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatTextView:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0b00ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 69
    .local v0, rb:Landroid/widget/RadioButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mWeeklyBar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->setRadioButton(Landroid/widget/RadioButton;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatTextView:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setRepeatText(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatText:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatPreference;->mRepeatTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 49
    return-void
.end method
