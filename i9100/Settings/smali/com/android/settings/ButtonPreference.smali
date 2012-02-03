.class public Lcom/android/settings/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isSame:Z

.field private mPrefText:Ljava/lang/String;

.field private mPrefTextView:Landroid/widget/TextView;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mTimeButton:Landroid/widget/Button;

.field private mTimeButtonText:Ljava/lang/String;

.field private mTimePicker:Landroid/app/TimePickerDialog;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const-string v0, "ButtonPreference"

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v3, p0, Lcom/android/settings/ButtonPreference;->isSame:Z

    .line 51
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/android/settings/ButtonPreference;->setLayoutResource(I)V

    .line 53
    sget-object v0, Lcom/android/settings/R$styleable;->ButtonPreference:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 56
    .local v6, a:Landroid/content/res/TypedArray;
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->mTimeButtonText:Ljava/lang/String;

    .line 59
    const-string v0, "key_auto_silent_pref"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 61
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 63
    const/4 v7, 0x0

    .line 64
    .local v7, hour:I
    const/4 v8, 0x0

    .line 66
    .local v8, minute:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 68
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0, v7, v8}, Lcom/android/settings/ButtonPreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->mTimeButtonText:Ljava/lang/String;

    .line 76
    new-instance v2, Lcom/android/settings/ButtonPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ButtonPreference$1;-><init>(Lcom/android/settings/ButtonPreference;)V

    .line 135
    .local v2, timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;

    .line 136
    return-void

    .line 69
    .end local v2           #timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_end"

    const/4 v4, 0x7

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 71
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_end"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mTimeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/ButtonPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings/ButtonPreference;->mTimeButtonText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/ButtonPreference;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/ButtonPreference;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings/ButtonPreference;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/ButtonPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/ButtonPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/settings/ButtonPreference;->isSame:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/ButtonPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/settings/ButtonPreference;->isSame:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/ButtonPreference;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ButtonPreference;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/ButtonPreference;)Landroid/app/TimePickerDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;

    return-object v0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 168
    const v0, 0x7f0b00db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->mPrefTextView:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0b00dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->mTimeButton:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/ButtonPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ButtonPreference$2;-><init>(Lcom/android/settings/ButtonPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mPrefTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ButtonPreference;->mPrefText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mTimeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ButtonPreference;->mTimeButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/ButtonPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mPrefTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mPrefTextView:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public timeFormatToString(II)Ljava/lang/String;
    .locals 9
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v5, 0xc

    const-string v8, " : "

    const-string v7, ""

    const-string v6, "0"

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 144
    .local v0, is24H:Z
    invoke-virtual {p0}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, mAmPm:Ljava/lang/String;
    move v2, p1

    .line 147
    .local v2, mHour:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, p1, 0xa

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, p2, 0xa

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    :goto_2
    return-object v3

    .line 148
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 151
    :cond_2
    if-lt p1, v5, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    if-le p1, v5, :cond_3

    sub-int v2, p1, v5

    .line 156
    :cond_3
    if-nez p1, :cond_4

    const/16 v2, 0xc

    .line 158
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, p2, 0xa

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4
.end method
