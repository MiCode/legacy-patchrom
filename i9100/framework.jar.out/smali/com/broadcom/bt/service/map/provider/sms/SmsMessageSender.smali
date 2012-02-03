.class public Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"


# static fields
.field private static final COLUMN_REPLY_PATH_PRESENT:I = 0x0

.field private static final COLUMN_SERVICE_CENTER:I = 0x1

.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MAP.SmsMessageSender"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDests:[Ljava/lang/String;

.field private mMessageText:Ljava/lang/String;

.field private mNumberOfDests:I

.field private mServiceCenter:Ljava/lang/String;

.field private mThreadId:J

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 72
    array-length v0, p2

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    .line 73
    iget v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mTimestamp:J

    .line 76
    iput-wide p4, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    .line 77
    iget-wide v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 12
    .parameter "threadId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 239
    const/4 v7, 0x0

    .line 242
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 245
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 252
    :cond_0
    if-eqz v7, :cond_1

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    :cond_2
    :goto_0
    return-object v0

    .line 249
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v9, v0, :cond_4

    move v8, v9

    .line 250
    .local v8, replyPathPresent:Z
    :goto_1
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 252
    :goto_2
    if-eqz v7, :cond_2

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #replyPathPresent:Z
    :cond_4
    move v8, v11

    .line 249
    goto :goto_1

    .restart local v8       #replyPathPresent:Z
    :cond_5
    move-object v0, v10

    .line 250
    goto :goto_2

    .line 252
    .end local v8           #replyPathPresent:Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 260
    const-string v0, "MAP.SmsMessageSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SmsMsgSender] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method


# virtual methods
.method public sendMessage(J)Landroid/net/Uri;
    .locals 29
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 99
    const/16 v28, 0x0

    .line 101
    .local v28, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    move v4, v0

    if-nez v4, :cond_1

    .line 103
    :cond_0
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Null message body or dest."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v27

    .line 108
    .local v27, smsManager:Landroid/telephony/SmsManager;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    move v4, v0

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_6

    .line 109
    const/4 v13, 0x0

    .line 120
    .local v13, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v27

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 123
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 125
    .local v24, messageCount:I
    const/4 v9, 0x1

    .line 127
    .local v9, requestDeliveryReport:Z
    if-nez v24, :cond_2

    .line 129
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsMessageSender.sendMessage: divideMessage returned empty messages. Original message is \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mTimestamp:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    move-wide v10, v0

    invoke-static/range {v4 .. v11}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 142
    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    move-object v0, v15

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v15, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v14, Ljava/util/ArrayList;

    move-object v0, v14

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v14, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 148
    .local v26, prefs:Landroid/content/SharedPreferences;
    const-string v22, "com.broadcom.bt.app.system"

    .line 149
    .local v22, intentReceiverPackage:Ljava/lang/String;
    const-string v21, ".MapReceiver"

    .line 150
    .local v21, intentReceiverClass:Ljava/lang/String;
    const-string v20, "MapURI"

    .line 152
    .local v20, intentExtraName:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, j:I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 153
    if-eqz v9, :cond_3

    .line 162
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v25, oneIntent:Landroid/content/Intent;
    const-string v4, "MapURI"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    const-string v4, "com.broadcom.bt.app.system"

    const-string v5, "com.broadcom.bt.app.system.MapReceiver"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/high16 v6, 0x4000

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v25

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v25           #oneIntent:Landroid/content/Intent;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send Intent class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->log(Ljava/lang/String;)V

    .line 192
    new-instance v19, Landroid/content/Intent;

    const-string v4, "com.broadcom.bt.service.map.sms.MESSAGE_SENT"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v19, intent:Landroid/content/Intent;
    const-string v4, "MapURI"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    const-string v4, "com.broadcom.bt.app.system"

    const-string v5, "com.broadcom.bt.app.system.MapReceiver"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/4 v4, 0x1

    sub-int v4, v24, v4

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_4

    .line 199
    const-string v4, "SendNextMsg"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/high16 v6, 0x4000

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 137
    .end local v14           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v15           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #intentExtraName:Ljava/lang/String;
    .end local v21           #intentReceiverClass:Ljava/lang/String;
    .end local v22           #intentReceiverPackage:Ljava/lang/String;
    .end local v23           #j:I
    .end local v26           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .line 139
    .local v16, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_1

    .line 209
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v14       #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v15       #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v20       #intentExtraName:Ljava/lang/String;
    .restart local v21       #intentReceiverClass:Ljava/lang/String;
    .restart local v22       #intentReceiverPackage:Ljava/lang/String;
    .restart local v23       #j:I
    .restart local v26       #prefs:Landroid/content/SharedPreferences;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMessage: address["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgs.count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->log(Ljava/lang/String;)V

    .line 213
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object v4, v0

    aget-object v11, v4, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v10, v27

    invoke-virtual/range {v10 .. v15}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMessage: address["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgs.count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->log(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 215
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 216
    .local v17, ex:Ljava/lang/Exception;
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsMessageSender.sendMessage: caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from SmsManager.sendMultipartTextMessage()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    .end local v9           #requestDeliveryReport:Z
    .end local v13           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v15           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v17           #ex:Ljava/lang/Exception;
    .end local v20           #intentExtraName:Ljava/lang/String;
    .end local v21           #intentReceiverClass:Ljava/lang/String;
    .end local v22           #intentReceiverPackage:Ljava/lang/String;
    .end local v23           #j:I
    .end local v24           #messageCount:I
    .end local v26           #prefs:Landroid/content/SharedPreferences;
    :cond_6
    return-object v28
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "dest"
    .parameter "msgText"
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 86
    iput-object p2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 87
    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    .line 88
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mTimestamp:J

    .line 90
    iput-wide p3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    .line 91
    iget-wide v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p3, p4}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->sendMessage(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
