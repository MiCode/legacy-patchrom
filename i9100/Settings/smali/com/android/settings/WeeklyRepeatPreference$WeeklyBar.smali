.class public Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
.super Landroid/widget/LinearLayout;
.source "WeeklyRepeatPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WeeklyRepeatPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeeklyBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;
    }
.end annotation


# static fields
.field private static mStrDays:Ljava/lang/String;


# instance fields
.field private mBar:[Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

.field private mIsEditMode:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput-boolean v2, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mIsEditMode:Z

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mStrDays:Ljava/lang/String;

    .line 99
    const-string v0, "key_auto_silent_pref"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->initBar()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private initBar()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, -0x2

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->removeAllViews()V

    .line 181
    new-array v1, v5, [Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    iput-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mBar:[Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mBar:[Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    new-instance v2, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;-><init>(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 184
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mBar:[Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mStrDays:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mBar:[Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x33

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mBar:[Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x32

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 189
    :cond_1
    return-void
.end method


# virtual methods
.method public getWeeklyBarState()I
    .locals 4

    .prologue
    .line 153
    const/4 v1, 0x1

    .line 154
    .local v1, mask:I
    const/4 v2, 0x0

    .line 155
    .local v2, result:I
    const/4 v0, 0x6

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 156
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mBar:[Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    or-int/lit8 v2, v2, 0x1

    .line 159
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    .line 155
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 162
    :cond_1
    shr-int/lit8 v2, v2, 0x1

    .line 164
    return v2
.end method

.method public isDailyItemCheckedAt(I)Z
    .locals 1
    .parameter "nth"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mBar:[Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public refreshWeeklyBar()V
    .locals 7

    .prologue
    .line 107
    const/4 v2, 0x1

    .line 108
    .local v2, mask:I
    iget-object v4, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "key_repeat_days"

    const/16 v6, 0x80

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 109
    .local v3, repeat:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_1

    .line 110
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v0, v4

    .line 111
    .local v0, check:Z
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->setDailyItemChecked(IZ)V

    .line 112
    shr-int/lit8 v3, v3, 0x1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0           #check:Z
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->invalidate()V

    .line 116
    return-void
.end method

.method public setDailyItemChecked(IZ)V
    .locals 1
    .parameter "nth"
    .parameter "check"

    .prologue
    .line 142
    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mBar:[Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setChecked(Z)V

    goto :goto_0
.end method

.method public setEditMode(Z)V
    .locals 0
    .parameter "isEditable"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mIsEditMode:Z

    .line 124
    invoke-direct {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->initBar()V

    .line 125
    return-void
.end method

.method public setRadioButton(Landroid/widget/RadioButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mRadioButton:Landroid/widget/RadioButton;

    .line 120
    return-void
.end method

.method public setWeeklyBarState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 169
    const/4 v2, 0x1

    .line 170
    .local v2, mask:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    .line 171
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 172
    .local v0, check:Z
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->setDailyItemChecked(IZ)V

    .line 173
    shr-int/lit8 p1, p1, 0x1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0           #check:Z
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->invalidate()V

    .line 177
    return-void
.end method
