.class final Lcom/android/phone/DriveSmartUtils;
.super Ljava/lang/Object;
.source "DriveSmartUtils.java"


# static fields
.field private static final CALL_RESPONSE:Ljava/lang/String; = "call_response_text"

.field static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DRIVING_MODE:Ljava/lang/String; = "driving_enabled"

.field private static final HANDSFREE:Ljava/lang/String; = "handsfree_enabled"

.field private static final PREMIUM_PKG:Ljava/lang/String; = "premium_installed"

.field private static final SMS_BODY:Ljava/lang/String; = "sms_body"

.field private static final SMS_DELIVERY_INTENT:Ljava/lang/String; = "delivery_intent"

.field private static final SMS_SENDTO:Ljava/lang/String; = "smsto"

.field private static final SMS_SENT_INTENT:Ljava/lang/String; = "sent_intent"

.field private static final SQL_TRUE:I = 0x1

.field static final WL_PHONE:Ljava/lang/String; = "phone_number"

.field static final WL_PHONE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final WL_PHONE_PREF:Ljava/lang/String; = "whitelist_phone"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v2, 0x7f0b

    const-string v3, "content://"

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DriveSmartUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/whitelist_phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DriveSmartUtils;->WL_PHONE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flagDrivingModeCall(Lcom/android/phone/BluetoothHandsfree;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "bt"
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    .local v2, flag:Z
    const-string v6, "driving_enabled"

    invoke-static {p1, v6}, Lcom/android/phone/DriveSmartUtils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 35
    .local v1, drivingMode:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 37
    .local v5, wiredHeadsetPlugged:Z
    if-eqz v1, :cond_4

    .line 38
    const-string v6, "handsfree_enabled"

    invoke-static {p1, v6}, Lcom/android/phone/DriveSmartUtils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 39
    .local v4, handsfreeNormal:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget v6, v6, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v0, v9

    .line 40
    .local v0, btConnected:Z
    :goto_0
    if-eqz v4, :cond_0

    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v5, :cond_3

    :cond_1
    move v3, v2

    .line 45
    .end local v0           #btConnected:Z
    .end local v2           #flag:Z
    .end local v4           #handsfreeNormal:Z
    .local v3, flag:I
    :goto_1
    return v3

    .end local v3           #flag:I
    .restart local v2       #flag:Z
    .restart local v4       #handsfreeNormal:Z
    :cond_2
    move v0, v8

    .line 39
    goto :goto_0

    .line 43
    .restart local v0       #btConnected:Z
    :cond_3
    invoke-static {p1, p2}, Lcom/android/phone/DriveSmartUtils;->isNumberWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v9

    .end local v0           #btConnected:Z
    .end local v4           #handsfreeNormal:Z
    :cond_4
    :goto_2
    move v3, v2

    .line 45
    .restart local v3       #flag:I
    goto :goto_1

    .end local v3           #flag:I
    .restart local v0       #btConnected:Z
    .restart local v4       #handsfreeNormal:Z
    :cond_5
    move v2, v8

    .line 43
    goto :goto_2
.end method

.method static getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "preferenceName"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 80
    const/4 v7, 0x0

    .line 82
    .local v7, prefValue:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/DriveSmartUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, prefMode:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 84
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 88
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v9, :cond_2

    move v7, v9

    .line 91
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_1
    return v7

    :cond_2
    move v7, v8

    .line 89
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method static getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "preferenceName"

    .prologue
    const/4 v2, 0x0

    .line 101
    const/4 v7, 0x0

    .line 103
    .local v7, prefValue:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/DriveSmartUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 104
    .local v1, prefMode:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 107
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 109
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_1
    return-object v7

    .line 114
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method static isNumberWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v9, "phone_number"

    .line 50
    const-string v4, "premium_installed"

    invoke-static {p0, v4}, Lcom/android/phone/DriveSmartUtils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v7

    .line 76
    :goto_0
    return v3

    .line 53
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/DriveSmartUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "whitelist_phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 54
    .local v1, wlUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "phone_number"

    aput-object v9, v2, v7

    .local v2, WL_ALL_PHONES:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 59
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 62
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    :cond_1
    const-string v3, "phone_number"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v3, v8

    goto :goto_0

    .line 69
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 73
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v3, v7

    .line 76
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method static sendCallerReplySms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "address"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
