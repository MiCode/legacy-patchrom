.class public Lcom/android/internal/telephony/gsm/FastDorm;
.super Ljava/lang/Object;
.source "FastDorm.java"


# static fields
.field private static final FD_PREFERENCES_NAME:Ljava/lang/String; = "fdormancy.preferences_name"

.field private static final KEY_FD_STATE:Ljava/lang/String; = "fdormancy.key.state"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field databaseFile:Ljava/io/File;

.field private dormLCDOffPolicy:Z

.field private dormLCDOnPolicy:Z

.field private mDefaultDormTime:I

.field mDormDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDormancyFlag:Z

.field private mFastDormancyLCDRcvr:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsScreenOn:Z

.field private mScreenOffDormTime:I

.field private mScreenOnDormTime:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "FastDormancy"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->LOG_TAG:Ljava/lang/String;

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    .line 63
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 64
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v3, "FastDormancy"

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "FastDormancy"

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->LOG_TAG:Ljava/lang/String;

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    .line 63
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 64
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 82
    const-string v0, "FastDormancy"

    const-string v0, "[FD] FastDormancy Constructor No plmn"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIntentFilter:Landroid/content/IntentFilter;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/android/internal/telephony/gsm/FastDorm$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/FastDorm$1;-><init>(Lcom/android/internal/telephony/gsm/FastDorm;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mFastDormancyLCDRcvr:Landroid/content/BroadcastReceiver;

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mFastDormancyLCDRcvr:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 4
    .parameter "phoneB"
    .parameter "mccmnc"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v3, "FastDormancy"

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "FastDormancy"

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->LOG_TAG:Ljava/lang/String;

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    .line 63
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 64
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 118
    const-string v0, "FastDormancy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FD] FastDormancy Constructor plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/FastDorm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/FastDorm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/FastDorm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/FastDorm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/FastDorm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/FastDorm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/FastDorm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    return p1
.end method

.method private readNwkinfoDb()V
    .locals 6

    .prologue
    const-string/jumbo v5, "nwk_info.db"

    const-string v4, "FastDormancy"

    .line 270
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.telephony/databases"

    const-string/jumbo v3, "nwk_info.db"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->databaseFile:Ljava/io/File;

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->databaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/csc"

    const-string/jumbo v3, "nwk_info.db"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->databaseFile:Ljava/io/File;

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->databaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-string v1, "FastDormancy"

    const-string v1, "[FD] no nwk info db"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string v1, "FastDormancy"

    const-string v1, "[FD] csc system area"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->databaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDormDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 297
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "FastDormancy"

    const-string v1, "[FD] nwk info db open exception"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    const-string v1, "FastDormancy"

    const-string v1, "[FD] provider data area"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setDormancyTime(Ljava/lang/String;)V
    .locals 11
    .parameter "mOperatorNumeric"

    .prologue
    const-string v10, "FastDormancy"

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(plmn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, selection:Ljava/lang/String;
    const-string v0, "FastDormancy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FD] setDormancyTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDormDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDormDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dormpolicy"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 150
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 151
    const-string v0, "FastDormancy"

    const-string v1, "[FD] (cursor != null) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "FastDormancy"

    const-string v1, "[FD] (cursor.moveToFirst()) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "lcdonfdtime"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 156
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    if-lez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 163
    :goto_0
    const-string v0, "lcdofffdtime"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 164
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    if-lez v0, :cond_1

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 170
    :goto_1
    const-string v0, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FD] mScreenOnDormTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dormLCDOnPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOffDormTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dormLCDOffPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 206
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_3
    return-void

    .line 159
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 204
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "FastDormancy"

    const-string v0, "[FD] Exception during getDormancyTime"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 167
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    goto :goto_1

    .line 180
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 181
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 184
    const-string v0, "FastDormancy"

    const-string v1, "[FD] By default FD, !(cursor.moveToFirst()) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 192
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 193
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 196
    const-string v0, "FastDormancy"

    const-string v1, "[FD] By default FD, No Cursor "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 200
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_4
    const-string v0, "FastDormancy"

    const-string v1, "[FD] There\'s no mDormDb in setDormancyTime"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mFastDormancyLCDRcvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    const-string v0, "FastDormancy"

    const-string v1, "[FD] FastDormancy Constructor closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public getDefaultDormTime()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    return v0
.end method

.method public getDormancyFlag(Ljava/lang/String;)Z
    .locals 10
    .parameter "mOperatorNumeric"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "fdormancy.key.state"

    const-string v6, "FastDormancy"

    .line 209
    const-string v3, "FastDormancy"

    const-string v3, "[FD] ON default: true"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    .line 214
    .local v1, mDormFlag:Z
    const/4 v1, 0x1

    .line 220
    if-nez p1, :cond_0

    .line 221
    const-string v3, "FastDormancy"

    const-string v3, "[FD]: No op numeric"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 266
    :goto_0
    return v3

    .line 226
    :cond_0
    const-string v3, "45001"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    const-string v3, "FastDormancy"

    const-string v3, "[FD]: Now Samsung Test Bed"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 228
    goto :goto_0

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fdormancy.preferences_name"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 237
    .local v2, preferences:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_3

    const-string v3, "fdormancy.key.state"

    invoke-interface {v2, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    const-string v3, "fdormancy.key.state"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 244
    .local v0, fdState:Z
    if-eqz v0, :cond_2

    move v1, v8

    .line 246
    :goto_1
    const-string v3, "FastDormancy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FD] Dormant flag("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") from key string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 247
    goto :goto_0

    :cond_2
    move v1, v7

    .line 244
    goto :goto_1

    .line 251
    .end local v0           #fdState:Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    if-eqz v3, :cond_5

    .line 252
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    if-eqz v3, :cond_4

    .line 253
    const/4 v1, 0x1

    :goto_2
    move v3, v1

    .line 266
    goto :goto_0

    .line 255
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 258
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    if-eqz v3, :cond_6

    .line 259
    const/4 v1, 0x1

    goto :goto_2

    .line 261
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getScreenOffDormTime()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    return v0
.end method

.method public getScreenOnDormTime()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    return v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .parameter "plmn"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/FastDorm;->readNwkinfoDb()V

    .line 129
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/FastDorm;->setDormancyTime(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDormDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDormDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 133
    :cond_0
    return-void
.end method
