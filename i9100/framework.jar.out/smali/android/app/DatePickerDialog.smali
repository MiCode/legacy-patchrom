.class public Landroid/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mShowTitleIcon:Z

.field private mTitleDateFormat:Ljava/text/SimpleDateFormat;

.field private final mWeekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 9
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 86
    iput-boolean v8, p0, Landroid/app/DatePickerDialog;->mShowTitleIcon:Z

    .line 216
    new-instance v4, Landroid/app/DatePickerDialog$1;

    invoke-direct {v4, p0}, Landroid/app/DatePickerDialog$1;-><init>(Landroid/app/DatePickerDialog;)V

    iput-object v4, p0, Landroid/app/DatePickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p3, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 136
    iput p4, p0, Landroid/app/DatePickerDialog;->mInitialYear:I

    .line 137
    iput p5, p0, Landroid/app/DatePickerDialog;->mInitialMonth:I

    .line 138
    iput p6, p0, Landroid/app/DatePickerDialog;->mInitialDay:I

    .line 139
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 140
    .local v2, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/DatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Landroid/app/DatePickerDialog;->loadTitleFormat()V

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 145
    iget v4, p0, Landroid/app/DatePickerDialog;->mInitialYear:I

    iget v6, p0, Landroid/app/DatePickerDialog;->mInitialMonth:I

    iget v7, p0, Landroid/app/DatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v4, v6, v7}, Landroid/app/DatePickerDialog;->updateTitle(III)V

    .line 147
    const v4, 0x10403c6

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4, p0}, Landroid/app/DatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    const/high16 v4, 0x104

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v5

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v4, v0

    invoke-virtual {p0, v6, v4}, Landroid/app/DatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    invoke-virtual {p0, v8}, Landroid/app/DatePickerDialog;->setIcon(I)V

    .line 155
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 157
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090023

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, v3}, Landroid/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 159
    const v4, 0x10201b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    iput-object v4, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 160
    iget-object v4, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget v5, p0, Landroid/app/DatePickerDialog;->mInitialYear:I

    iget v6, p0, Landroid/app/DatePickerDialog;->mInitialMonth:I

    iget v7, p0, Landroid/app/DatePickerDialog;->mInitialDay:I

    invoke-virtual {v4, v5, v6, v7, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 167
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 176
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 115
    const v2, 0x10300a6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/DatePickerDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private loadTitleFormat()V
    .locals 5

    .prologue
    const-string v3, "EEEEE, "

    .line 302
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    .line 304
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EEEEE, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EEEEE, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EEEEE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EEEEE, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MM"

    const-string v4, "MMM"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateTitle(III)V
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/app/DatePickerDialog;->loadTitleFormat()V

    .line 271
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 272
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 273
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 274
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 244
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 249
    :cond_0
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 251
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 254
    :cond_1
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 258
    invoke-direct {p0, p2, p3, p4}, Landroid/app/DatePickerDialog;->updateTitle(III)V

    .line 259
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 289
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 290
    .local v2, year:I
    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 292
    .local v0, day:I
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 293
    invoke-direct {p0, v2, v1, v0}, Landroid/app/DatePickerDialog;->updateTitle(III)V

    .line 294
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 280
    .local v0, state:Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    const-string/jumbo v1, "month"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v1, "day"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    return-object v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->clearFocus()V

    .line 202
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 213
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 187
    const v1, 0x1020195

    invoke-virtual {p0, v1}, Landroid/app/DatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 189
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 190
    return-void
.end method

.method public twSetRangeOfYear(II)V
    .locals 1
    .parameter "startYear"
    .parameter "endYear"

    .prologue
    .line 234
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DatePicker;->twSetRangeOfYear(II)V

    .line 235
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 262
    iput p1, p0, Landroid/app/DatePickerDialog;->mInitialYear:I

    .line 263
    iput p2, p0, Landroid/app/DatePickerDialog;->mInitialMonth:I

    .line 264
    iput p3, p0, Landroid/app/DatePickerDialog;->mInitialDay:I

    .line 265
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 266
    return-void
.end method
