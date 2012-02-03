.class public Lcom/android/settings/DateTimeSettings;
.super Landroid/preference/PreferenceActivity;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private beforeTime:J

.field private mAutoPref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 571
    new-instance v0, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$2;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 543
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 545
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 546
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 547
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 548
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 550
    if-gez p1, :cond_0

    .line 551
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 552
    neg-int p1, p1

    .line 557
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 558
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 560
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 561
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 563
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 565
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 566
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 568
    return-object v0

    .line 554
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 471
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    .line 474
    :goto_0
    return v1

    .line 471
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 474
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, curDateFormat:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 464
    const-string v0, "MM-dd-yyyy"

    .line 466
    :cond_0
    return-object v0
.end method

.method private getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const-string v10, "DateTimeSettings"

    .line 509
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v3, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 512
    .local v0, date:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f04002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 513
    .local v5, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 514
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 515
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 516
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 517
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 522
    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "timezone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 523
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 524
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 533
    :cond_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 539
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p1

    .line 520
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 534
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 535
    .local v4, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "DateTimeSettings"

    const-string v6, "Ill-formatted timezones.xml file"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 528
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_5

    .line 529
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 536
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 537
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "DateTimeSettings"

    const-string v6, "Unable to read timezones.xml file"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 531
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private getTimeZoneText()Ljava/lang/String;
    .locals 8

    .prologue
    .line 489
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 490
    .local v5, tz:Ljava/util/TimeZone;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 491
    .local v2, daylight:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 495
    .local v0, date:J
    invoke-virtual {v5, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, mTimeZoneDisplayName:Ljava/lang/String;
    const-string v6, "GMT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 499
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 501
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private initUI()V
    .locals 13

    .prologue
    const v12, 0x7f050002

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getAutoState()Z

    move-result v7

    .line 115
    .local v7, autoEnabled:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 116
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 118
    const-string v0, "auto_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    .line 119
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 121
    const-string v0, "24 hour"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 122
    const-string v0, "timezone"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 123
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 124
    const-string v0, "date_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, dateFormats:[Ljava/lang/String;
    array-length v0, v9

    new-array v10, v0, [Ljava/lang/String;

    .line 128
    .local v10, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, currentFormat:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 132
    const-string v8, ""

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v7, :cond_1

    move v1, v11

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v7, :cond_2

    move v1, v11

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v7, :cond_3

    move v1, v11

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    return-void

    :cond_1
    move v1, v5

    .line 152
    goto :goto_0

    :cond_2
    move v1, v5

    .line 153
    goto :goto_1

    :cond_3
    move v1, v5

    .line 154
    goto :goto_2
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 452
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    if-eqz p1, :cond_0

    const-string v2, "24"

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 459
    return-void

    .line 456
    :cond_0
    const-string v2, "12"

    goto :goto_0
.end method

.method private setDefaultDateValue()V
    .locals 11

    .prologue
    const/16 v9, 0x7d0

    const/4 v8, 0x1

    const-string v10, "DateTimeSettings"

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 187
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 188
    .local v1, currentTime:J
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 190
    .local v5, year:I
    const-string v6, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v6, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "year = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v6, 0x7f4

    if-gt v5, v6, :cond_0

    if-ge v5, v9, :cond_1

    .line 194
    :cond_0
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 195
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 196
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 197
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 199
    .local v3, when:J
    const-wide/16 v6, 0x3e8

    div-long v6, v3, v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 200
    invoke-static {v3, v4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 203
    .end local v3           #when:J
    :cond_1
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method private updateTimeAndDateDisplay()V
    .locals 9

    .prologue
    const-string v8, "DateTimeSettings"

    .line 207
    const-string v6, "DateTimeSettings"

    const-string v6, "Nitz Time will be updated"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->setDefaultDateValue()V

    .line 210
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 211
    .local v5, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 212
    .local v4, now:Ljava/util/Date;
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 213
    .local v2, dummyDate:Ljava/util/Date;
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    const-string v6, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay : Current Timezone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, dateEntries:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    :cond_0
    return-void

    .line 220
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 442
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "manual_set"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 102
    .local v1, mManualSet:Z
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    const v2, 0x7f08060c

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 107
    :cond_0
    const v2, 0x7f04000c

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 110
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    .local v0, d:Landroid/app/Dialog;
    :goto_0
    move-object v1, v0

    .line 384
    .end local v0           #d:Landroid/app/Dialog;
    :goto_1
    return-object v1

    .line 324
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 325
    .local v7, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 332
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 335
    .end local v0           #d:Landroid/app/Dialog;
    .end local v7           #calendar:Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 336
    .restart local v7       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    const/16 v1, 0xb

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 342
    .restart local v0       #d:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    .end local v0           #d:Landroid/app/Dialog;
    .end local v7           #calendar:Ljava/util/Calendar;
    :pswitch_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v6, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080609

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 348
    const v1, 0x1080027

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 349
    const v1, 0x7f08060a

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 350
    const v1, 0x7f080002

    new-instance v2, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    const v1, 0x7f080003

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 247
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/DateTimeSettings;->beforeTime:J

    .line 249
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 250
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 252
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 254
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 255
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 261
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 181
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 421
    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 435
    :cond_0
    :goto_0
    return v2

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 425
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 428
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 429
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    goto :goto_0

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    const-class v1, Lcom/android/settings/ZoneList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DateTimeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7
    .parameter "id"
    .parameter "d"

    .prologue
    .line 389
    packed-switch p1, :pswitch_data_0

    .line 415
    :goto_0
    return-void

    .line 391
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/DatePickerDialog;

    move-object v2, v0

    .line 392
    .local v2, datePicker:Landroid/app/DatePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 393
    .local v1, calendar:Ljava/util/Calendar;
    const/16 v4, 0x7d0

    const/16 v5, 0x7f4

    invoke-virtual {v2, v4, v5}, Landroid/app/DatePickerDialog;->twSetRangeOfYear(II)V

    .line 394
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    .line 405
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #datePicker:Landroid/app/DatePickerDialog;
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroid/app/TimePickerDialog;

    move-object v3, v0

    .line 406
    .local v3, timePicker:Landroid/app/TimePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 407
    .restart local v1       #calendar:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/android/settings/DateTimeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 174
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "date_format"

    const-string v6, "auto_time"

    .line 288
    const-string v2, "date_format"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, format:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 316
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string v2, "auto_time"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 309
    .local v0, autoEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    if-eqz v0, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 313
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 314
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v0, :cond_5

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 309
    goto :goto_1

    :cond_3
    move v3, v5

    .line 312
    goto :goto_2

    :cond_4
    move v3, v5

    .line 313
    goto :goto_3

    :cond_5
    move v3, v5

    .line 314
    goto :goto_4
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 266
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/DateTimeSettings;->beforeTime:J

    .line 268
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 269
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 271
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 272
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 274
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 275
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 285
    return-void
.end method
