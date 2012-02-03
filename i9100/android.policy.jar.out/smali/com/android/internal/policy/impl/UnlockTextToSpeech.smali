.class public Lcom/android/internal/policy/impl/UnlockTextToSpeech;
.super Ljava/lang/Object;
.source "UnlockTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnlockTextToSpeech$1;,
        Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static IsTtsInitiated:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UnlockTextToSpeech"

.field private static _instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

.field private static mTts:Landroid/speech/tts/TextToSpeech;


# instance fields
.field private TtsmissedEvent:Ljava/lang/String;

.field private Ttstime:Ljava/lang/String;

.field private Ttsweather:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field mDefaultCountry:Ljava/lang/String;

.field mDefaultLanguage:Ljava/lang/String;

.field mDefaultLocVariant:Ljava/lang/String;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 60
    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 57
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    .line 63
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttsweather:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLanguage:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultCountry:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLocVariant:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    new-instance v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;-><init>(Lcom/android/internal/policy/impl/UnlockTextToSpeech;Lcom/android/internal/policy/impl/UnlockTextToSpeech$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    .line 84
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->doSpeak()V

    .line 86
    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    return p0
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 291
    const-class v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 292
    const-string v1, "UnlockTextToSpeech"

    const-string v2, "destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 295
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 296
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    .line 297
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 298
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_0
    monitor-exit v0

    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/UnlockTextToSpeech;
    .locals 2
    .parameter "context"

    .prologue
    .line 109
    const-class v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-static {}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->destroy()V

    .line 112
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 113
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private phoneIsInUse()Z
    .locals 5

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 123
    .local v2, phoneInUse:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 125
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 133
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 125
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 127
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "UnlockTextToSpeech"

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized stopTts()V
    .locals 2

    .prologue
    .line 284
    const-class v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 286
    invoke-static {}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_0
    monitor-exit v0

    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public doSpeak()V
    .locals 15

    .prologue
    .line 140
    const-string v10, "UnlockTextToSpeech"

    const-string v11, "Getting into speak TTS"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->phoneIsInUse()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    const-string v10, "UnlockTextToSpeech"

    const-string v11, "phoneIsInUse Don\'t speak TTS"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v10, :cond_0

    sget-boolean v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    if-eqz v10, :cond_0

    .line 151
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v11, Ljava/util/Locale;

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLanguage:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultCountry:Ljava/lang/String;

    iget-object v14, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLocVariant:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v4

    .line 153
    .local v4, languageResult:I
    if-gez v4, :cond_2

    .line 154
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 158
    :cond_2
    const-string v10, "UnlockTextToSpeech"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS locale:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v12}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v10

    if-nez v10, :cond_0

    .line 161
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v7, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "streamType"

    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v10, "utteranceId"

    const-string v11, "Unlock screen tts ended"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 170
    .local v1, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 172
    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 173
    .local v2, hourInt:I
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 174
    .local v6, minInt:I
    const/16 v10, 0x9

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 177
    .local v0, am_pm:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 179
    .local v3, is24HFormat:Z
    if-eqz v3, :cond_7

    .line 181
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x10404d4

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 226
    :goto_1
    const-string v10, "UnlockTextToSpeech"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS Time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 233
    .local v5, mNM:Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 236
    const/4 v8, 0x0

    .line 237
    .local v8, nCallCount:I
    const/4 v9, 0x0

    .line 239
    .local v9, nMsgCount:I
    const-string v10, "com.android.phone"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 240
    const-string v10, "com.android.mms"

    const/16 v11, 0x7b

    invoke-virtual {v5, v10, v11}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    .line 242
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v10, :cond_3

    .line 243
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v8, v10, Landroid/app/NotificationInfo;->missedCount:I

    .line 244
    :cond_3
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v10, :cond_4

    .line 245
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v9, v10, Landroid/app/NotificationInfo;->missedCount:I

    .line 247
    :cond_4
    if-lez v8, :cond_b

    if-lez v9, :cond_b

    .line 248
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x10404c1

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 250
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 274
    :goto_2
    if-gtz v8, :cond_5

    if-lez v9, :cond_6

    .line 276
    :cond_5
    const-string v10, "UnlockTextToSpeech"

    iget-object v11, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_6
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 186
    .end local v5           #mNM:Landroid/app/NotificationManager;
    .end local v8           #nCallCount:I
    .end local v9           #nMsgCount:I
    :cond_7
    const/16 v10, 0xc

    if-le v2, v10, :cond_9

    .line 189
    add-int/lit8 v2, v2, -0xc

    .line 197
    :cond_8
    :goto_3
    if-nez v0, :cond_a

    .line 199
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x10404bb

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    goto/16 :goto_1

    .line 191
    :cond_9
    if-nez v2, :cond_8

    .line 193
    const/16 v2, 0xc

    goto :goto_3

    .line 204
    :cond_a
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x10404bc

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    goto/16 :goto_1

    .line 252
    .restart local v5       #mNM:Landroid/app/NotificationManager;
    .restart local v8       #nCallCount:I
    .restart local v9       #nMsgCount:I
    :cond_b
    const/4 v10, 0x1

    if-le v8, v10, :cond_c

    .line 253
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x10404bf

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 255
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_2

    .line 257
    :cond_c
    const/4 v10, 0x1

    if-le v9, v10, :cond_d

    .line 258
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x10404c0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 260
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_2

    .line 262
    :cond_d
    const/4 v10, 0x1

    if-ne v8, v10, :cond_e

    .line 263
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x10404bd

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 264
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_2

    .line 266
    :cond_e
    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 267
    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x10404be

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 269
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_2

    .line 272
    :cond_f
    sget-object v10, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_2
.end method
