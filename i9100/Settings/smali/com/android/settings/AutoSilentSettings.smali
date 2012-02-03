.class public Lcom/android/settings/AutoSilentSettings;
.super Landroid/preference/PreferenceActivity;
.source "AutoSilentSettings.java"


# static fields
.field public static final SYNC_NOTIFICATION:Ljava/lang/Object;

.field public static final SYNC_REGISTER_RECEIVER:Ljava/lang/Object;


# instance fields
.field private mAutoSilent:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mWeeklyRepeat:Lcom/android/settings/WeeklyRepeatPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/AutoSilentSettings;->SYNC_REGISTER_RECEIVER:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/AutoSilentSettings;->SYNC_NOTIFICATION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/android/settings/AutoSilentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AutoSilentSettings$1;-><init>(Lcom/android/settings/AutoSilentSettings;)V

    iput-object v0, p0, Lcom/android/settings/AutoSilentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AutoSilentSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AutoSilentSettings;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private static calculateAlarm(II)Ljava/util/Calendar;
    .locals 8
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 460
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 461
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 463
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 464
    .local v1, nowHour:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 467
    .local v2, nowMinute:I
    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 469
    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 471
    :cond_1
    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 472
    invoke-virtual {v0, v7, p1}, Ljava/util/Calendar;->set(II)V

    .line 473
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 474
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 476
    return-object v0
.end method

.method public static cancelNotifyASM(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 407
    sget-object v1, Lcom/android/settings/AutoSilentSettings;->SYNC_NOTIFICATION:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 411
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 412
    monitor-exit v1

    .line 413
    return-void

    .line 412
    .end local v0           #nm:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static isASMOnOffWillChange(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 272
    const-string v3, "key_auto_silent_pref"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 274
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "entered_auto_silent_mode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 276
    .local v1, isCurrentEntered:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 277
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {p0, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-eq v3, v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z
    .locals 11
    .parameter "context"
    .parameter "calendar"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 281
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 282
    .local v2, hour:I
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 284
    .local v3, minute:I
    const-string v7, "key_auto_silent_pref"

    invoke-virtual {p0, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 286
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v7, "key_hour_start"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 287
    .local v4, sh:I
    const-string v7, "key_minute_start"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 288
    .local v5, sm:I
    const-string v7, "key_hour_end"

    const/4 v8, 0x7

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 289
    .local v0, eh:I
    const-string v7, "key_minute_end"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 291
    .local v1, em:I
    if-ge v4, v0, :cond_2

    .line 292
    if-ge v4, v2, :cond_0

    if-le v0, v2, :cond_0

    move v7, v9

    .line 327
    :goto_0
    return v7

    .line 294
    :cond_0
    if-ne v4, v2, :cond_1

    .line 295
    if-lt v3, v5, :cond_9

    move v7, v9

    .line 296
    goto :goto_0

    .line 297
    :cond_1
    if-ne v0, v2, :cond_9

    .line 298
    if-ge v3, v1, :cond_9

    move v7, v9

    .line 299
    goto :goto_0

    .line 302
    :cond_2
    if-le v4, v0, :cond_6

    .line 303
    if-lt v4, v2, :cond_3

    if-le v0, v2, :cond_4

    :cond_3
    move v7, v9

    .line 304
    goto :goto_0

    .line 305
    :cond_4
    if-ne v4, v2, :cond_5

    .line 306
    if-lt v3, v5, :cond_9

    move v7, v9

    .line 307
    goto :goto_0

    .line 308
    :cond_5
    if-ne v0, v2, :cond_9

    .line 309
    if-ge v3, v1, :cond_9

    move v7, v9

    .line 310
    goto :goto_0

    .line 313
    :cond_6
    if-ne v4, v0, :cond_9

    .line 314
    if-ne v4, v2, :cond_9

    .line 315
    if-ge v5, v1, :cond_7

    .line 316
    if-gt v5, v3, :cond_9

    if-le v1, v3, :cond_9

    move v7, v9

    .line 317
    goto :goto_0

    .line 319
    :cond_7
    if-le v5, v1, :cond_9

    .line 320
    if-le v5, v3, :cond_8

    if-le v1, v3, :cond_9

    :cond_8
    move v7, v9

    .line 321
    goto :goto_0

    :cond_9
    move v7, v10

    .line 327
    goto :goto_0
.end method

.method public static notifyASM(Landroid/content/Context;I)V
    .locals 20
    .parameter "context"
    .parameter "idTitle"

    .prologue
    .line 337
    sget-object v16, Lcom/android/settings/AutoSilentSettings;->SYNC_NOTIFICATION:Ljava/lang/Object;

    monitor-enter v16

    .line 339
    :try_start_0
    const-string v5, "key_auto_silent_pref"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 343
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 346
    .local v10, nm:Landroid/app/NotificationManager;
    const-string v6, "key_auto_silent_setted"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 347
    const/16 p0, 0x1

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 348
    .end local p0
    monitor-exit v16

    .line 404
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 351
    .restart local v5       #sp:Landroid/content/SharedPreferences;
    .restart local p0
    :cond_0
    const-string v6, "key_hour_start"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 352
    .local v11, sh:I
    const-string v6, "key_minute_start"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 353
    .local v12, sm:I
    const-string v6, "key_hour_end"

    const/4 v7, 0x7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 354
    .local v6, eh:I
    const-string v7, "key_minute_end"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 357
    .local v8, em:I
    if-eqz p1, :cond_2

    .line 358
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 359
    .local v5, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "entered_auto_silent_mode"

    const v9, 0x7f0800cc

    move/from16 v0, p1

    move v1, v9

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 360
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    :goto_2
    const v5, 0x7f0800cd

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_5

    .line 374
    .end local v5           #spEditor:Landroid/content/SharedPreferences$Editor;
    const/16 p0, 0x1

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 375
    .end local p0
    monitor-exit v16

    goto :goto_0

    .line 403
    .end local v6           #eh:I
    .end local v8           #em:I
    .end local v10           #nm:Landroid/app/NotificationManager;
    .end local v11           #sh:I
    .end local v12           #sm:I
    :catchall_0
    move-exception p0

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 359
    .restart local v5       #spEditor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #eh:I
    .restart local v8       #em:I
    .restart local v10       #nm:Landroid/app/NotificationManager;
    .restart local v11       #sh:I
    .restart local v12       #sm:I
    .restart local p0
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 362
    .local v5, sp:Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    const-string v7, "entered_auto_silent_mode"

    const/4 v9, 0x0

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_3

    .line 363
    const p1, 0x7f0800cc

    .line 366
    .restart local p1
    :goto_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 367
    .local v5, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "entered_auto_silent_mode"

    const v9, 0x7f0800cc

    move/from16 v0, p1

    move v1, v9

    if-ne v0, v1, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 364
    .end local p1
    .local v5, sp:Landroid/content/SharedPreferences;
    :cond_3
    const p1, 0x7f0800cd

    .restart local p1
    goto :goto_3

    .line 367
    .local v5, spEditor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 379
    .end local v5           #spEditor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    const v9, 0x108002b

    .line 380
    .local v9, icon:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 381
    .local v13, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 382
    .local v14, when:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 383
    .local v5, appContext:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, contentTitle:Ljava/lang/CharSequence;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0800ce

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/settings/AutoSilentSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v11

    .end local v11           #sh:I
    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ~ "

    .end local v12           #sm:I
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/settings/AutoSilentSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    .end local p0
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, contentText:Ljava/lang/CharSequence;
    new-instance p0, Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Landroid/content/Intent;-><init>()V

    .line 389
    .local p0, notificationIntent:Landroid/content/Intent;
    const-string v8, "com.android.settings"

    .end local v8           #em:I
    const-string v11, "com.android.settings.AutoSilentSettings"

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, v5

    move v1, v8

    move-object/from16 v2, p0

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 393
    .local p0, contentIntent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8, v9, v13, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 394
    .local v8, notification:Landroid/app/Notification;
    move-object v0, v8

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 402
    const/16 p0, 0x1

    move-object v0, v10

    move/from16 v1, p0

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 403
    .end local p0           #contentIntent:Landroid/app/PendingIntent;
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static registerAutoSilentAlarm(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/high16 v12, 0x1000

    const/4 v11, 0x0

    .line 416
    const-string v9, "key_auto_silent_pref"

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 418
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v9, "key_hour_start"

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 419
    .local v5, sh:I
    const-string v9, "key_minute_start"

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 420
    .local v6, sm:I
    const-string v9, "key_hour_end"

    const/4 v10, 0x7

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 421
    .local v1, eh:I
    const-string v9, "key_minute_end"

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 423
    .local v2, em:I
    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 426
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.AUTO_SILENT_START_ACTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v8, startIntent:Landroid/content/Intent;
    invoke-static {p0, v11, v8, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 430
    .local v4, sender:Landroid/app/PendingIntent;
    invoke-static {v5, v6}, Lcom/android/settings/AutoSilentSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v0, v11, v9, v10, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 433
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.settings.AUTO_SILENT_END_ACTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v3, endIntent:Landroid/content/Intent;
    invoke-static {p0, v11, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 437
    invoke-static {v1, v2}, Lcom/android/settings/AutoSilentSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v0, v11, v9, v10, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 438
    return-void
.end method

.method public static timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v5, 0xc

    const-string v8, ":"

    const-string v7, ""

    const-string v6, "0"

    .line 246
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 247
    .local v0, is24H:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, mAmPm:Ljava/lang/String;
    move v2, p1

    .line 250
    .local v2, mHour:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 251
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

    const-string v4, ":"

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

    .line 261
    :goto_2
    return-object v3

    .line 251
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 254
    :cond_2
    if-lt p1, v5, :cond_3

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    if-le p1, v5, :cond_3

    sub-int v2, p1, v5

    .line 259
    :cond_3
    if-nez p1, :cond_4

    const/16 v2, 0xc

    .line 261
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v4, ":"

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

.method public static unregisterAutoSilentAlarm(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/high16 v7, 0x1000

    const/4 v6, 0x0

    .line 441
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 443
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.AUTO_SILENT_START_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 445
    .local v1, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 447
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.AUTO_SILENT_END_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 451
    const-string v4, "key_auto_silent_pref"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 453
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 454
    .local v3, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "entered_auto_silent_mode"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 456
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 224
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    if-nez p1, :cond_1

    .line 226
    const-string v2, "day_info"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 227
    .local v1, ret:[I
    if-eqz v1, :cond_0

    .line 228
    const/4 v2, 0x0

    aget v2, v1, v2

    if-nez v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/android/settings/AutoSilentSettings;->mWeeklyRepeat:Lcom/android/settings/WeeklyRepeatPreference;

    invoke-virtual {p0}, Lcom/android/settings/AutoSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/WeeklyRepeatPreference;->setRepeatText(Ljava/lang/String;)V

    .line 232
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "key_repeat_days"

    aget v4, v1, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 233
    iget-object v2, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    iget-object v2, p0, Lcom/android/settings/AutoSilentSettings;->mWeeklyRepeat:Lcom/android/settings/WeeklyRepeatPreference;

    invoke-virtual {v2}, Lcom/android/settings/WeeklyRepeatPreference;->getWeeklyBar()Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->refreshWeeklyBar()V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AutoSilentSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AutoSilentSettings;->registerAutoSilentAlarm(Landroid/content/Context;)V

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.AUTO_SILENT_START_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ext_key_changed_by_user"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/settings/AutoSilentSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #ret:[I
    :cond_1
    return-void

    .line 230
    .restart local v1       #ret:[I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/AutoSilentSettings;->mWeeklyRepeat:Lcom/android/settings/WeeklyRepeatPreference;

    invoke-virtual {p0}, Lcom/android/settings/AutoSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/WeeklyRepeatPreference;->setRepeatText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Lcom/android/settings/AutoSilentSettings;->addPreferencesFromResource(I)V

    .line 66
    const-string v1, "toggle_auto_silent_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/AutoSilentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/AutoSilentSettings;->mAutoSilent:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v1, "weekly_repeat"

    invoke-virtual {p0, v1}, Lcom/android/settings/AutoSilentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/WeeklyRepeatPreference;

    iput-object v1, p0, Lcom/android/settings/AutoSilentSettings;->mWeeklyRepeat:Lcom/android/settings/WeeklyRepeatPreference;

    .line 69
    const-string v1, "key_auto_silent_pref"

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/AutoSilentSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 70
    iget-object v1, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 72
    iget-object v1, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "key_auto_silent_setted"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, isAutoSilentChecked:Z
    iget-object v1, p0, Lcom/android/settings/AutoSilentSettings;->mAutoSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/AutoSilentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/AutoSilentSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 159
    iget-object v7, p0, Lcom/android/settings/AutoSilentSettings;->mAutoSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_7

    .line 160
    iget-object v7, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v8, "key_auto_silent_setted"

    iget-object v9, p0, Lcom/android/settings/AutoSilentSettings;->mAutoSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 161
    iget-object v7, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    iget-object v7, p0, Lcom/android/settings/AutoSilentSettings;->mAutoSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 164
    invoke-static {p0}, Lcom/android/settings/AutoSilentSettings;->isASMOnOffWillChange(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/AutoSilentSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AutoSilentSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/AutoSilentSettings;->registerAutoSilentAlarm(Landroid/content/Context;)V

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.settings.AUTO_SILENT_START_ACTION"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "ext_key_changed_by_user"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/settings/AutoSilentSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 173
    :cond_2
    iget-object v7, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v8, "entered_auto_silent_mode"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 174
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/android/settings/AutoSilentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 176
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v7, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v8, "previous_ringer_mode"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 178
    .local v3, previousRingerMode:I
    if-ne v3, v12, :cond_4

    .line 179
    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 194
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #previousRingerMode:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/AutoSilentSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/AutoSilentSettings;->unregisterAutoSilentAlarm(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/AutoSilentSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    goto :goto_0

    .line 183
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v3       #previousRingerMode:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/AutoSilentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibrate_in_silent"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v11, v7, :cond_5

    move v6, v11

    .line 187
    .local v6, vibeInSilent:Z
    :goto_2
    if-eqz v6, :cond_6

    move v7, v11

    :goto_3
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .end local v6           #vibeInSilent:Z
    :cond_5
    move v6, v10

    .line 183
    goto :goto_2

    .restart local v6       #vibeInSilent:Z
    :cond_6
    move v7, v10

    .line 187
    goto :goto_3

    .line 197
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #previousRingerMode:I
    .end local v6           #vibeInSilent:Z
    :cond_7
    iget-object v7, p0, Lcom/android/settings/AutoSilentSettings;->mWeeklyRepeat:Lcom/android/settings/WeeklyRepeatPreference;

    if-ne p2, v7, :cond_1

    .line 198
    iget-object v7, p0, Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v8, "key_repeat_days"

    const/16 v9, 0x80

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 199
    .local v4, repeat:I
    const/4 v2, 0x3

    .line 201
    .local v2, listItemPosition:I
    sparse-switch v4, :sswitch_data_0

    .line 213
    :goto_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    .restart local v1       #intent:Landroid/content/Intent;
    new-array v5, v12, [I

    aput v2, v5, v10

    aput v4, v5, v11

    .line 215
    .local v5, value:[I
    const-string v7, "com.android.settings.WeeklyRepeatList"

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v7, "day_info"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v1, v10}, Lcom/android/settings/AutoSilentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 203
    .end local v1           #intent:Landroid/content/Intent;
    .end local v5           #value:[I
    :sswitch_0
    const/4 v2, 0x1

    .line 204
    goto :goto_4

    .line 206
    :sswitch_1
    const/4 v2, 0x2

    .line 207
    goto :goto_4

    .line 209
    :sswitch_2
    const/4 v2, 0x0

    goto :goto_4

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_1
        0x7f -> :sswitch_0
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.settings.AUTO_SILENT_END_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/AutoSilentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AutoSilentSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method
