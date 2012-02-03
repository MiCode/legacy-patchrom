.class public Landroid/drm/mobile2/DrmRoapManager;
.super Ljava/lang/Object;
.source "DrmRoapManager.java"

# interfaces
.implements Landroid/drm/mobile2/HttpConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/DrmRoapManager$DataHandler;,
        Landroid/drm/mobile2/DrmRoapManager$HttpThread;
    }
.end annotation


# static fields
.field public static final DRM_RINGTONE_ALERT:Ljava/lang/String; = "DrmRingtoneExpiry"


# instance fields
.field public RTAlarmID:I

.field public RTAlarmPopup:I

.field public RTAlarmtype:I

.field public RTFileName:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private httpThread:Ljava/lang/Thread;

.field public omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 398
    :try_start_0
    const-string v1, "drm2_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 400
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libdrm2_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/drm/mobile2/OMADRMManager;)V
    .locals 2
    .parameter "drmManager"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 29
    iput-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->httpThread:Ljava/lang/Thread;

    .line 31
    iput-object p1, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 41
    invoke-direct {p0}, Landroid/drm/mobile2/DrmRoapManager;->roapInit()V

    .line 42
    return-void
.end method

.method private native Drm2DownloadCancel()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method private native DrmStore2Ro(Ljava/lang/String;ILjava/lang/String;J)Z
.end method

.method private native DrmStore2RoTrigger(I[B)Z
.end method

.method static synthetic access$000(Landroid/drm/mobile2/DrmRoapManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private native dcfHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
.end method

.method private native drm2QueryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private handlenativecallback(IIILjava/lang/Object;J)V
    .locals 8
    .parameter "what"
    .parameter "ext1"
    .parameter "ext2"
    .parameter "object"
    .parameter "ext3"

    .prologue
    .line 290
    packed-switch p1, :pswitch_data_0

    .line 359
    :pswitch_0
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "Default case:"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local p4
    .end local p5
    :goto_0
    return-void

    .line 292
    .restart local p4
    .restart local p5
    :pswitch_1
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "Request rcvd for Http create session"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request rcvd for Http create session obj is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object v0, p4

    check-cast v0, Landroid/drm/mobile2/HttpConfig;

    move-object v2, v0

    .line 296
    .local v2, config:Landroid/drm/mobile2/HttpConfig;
    invoke-direct {p0, p4, p1}, Landroid/drm/mobile2/DrmRoapManager;->sendHttpRequest(Ljava/lang/Object;I)V

    goto :goto_0

    .line 300
    .end local v2           #config:Landroid/drm/mobile2/HttpConfig;
    :pswitch_2
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "DRM_ROAP_PROGRESS_NOTIFY "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    check-cast p4, [I

    .end local p4
    move-object v0, p4

    check-cast v0, [I

    move-object v1, v0

    .line 302
    .local v1, a:[I
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM_ROAP_PROGRESS_NOTIFY:pduType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM_ROAP_PROGRESS_NOTIFY:protocolType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM_ROAP_PROGRESS_NOTIFY:statusType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    if-eqz v4, :cond_0

    .line 306
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x2

    aget v7, v1, v7

    invoke-interface {v4, v5, v6, v7}, Landroid/drm/mobile2/OMADRMManager$OnRoapListener;->onRoapProgress(III)Z

    goto/16 :goto_0

    .line 309
    :cond_0
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "ROAP LISTENER is NOT SET"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 313
    .end local v1           #a:[I
    .restart local p4
    :pswitch_3
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM_ROAP_RESULT_NOTIFY msg.arg2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "msg.arg1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    if-eqz v4, :cond_1

    .line 317
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    invoke-interface {v4, p2, p3}, Landroid/drm/mobile2/OMADRMManager$OnRoapListener;->onRoapResult(II)Z

    goto/16 :goto_0

    .line 319
    :cond_1
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "ROAP LISTENER is NOT SET"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    :pswitch_4
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM_ROAP_USER_CONSENT_REGIST_OF_ROACQ:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p4

    check-cast v0, Ljava/lang/Long;

    move-object p5, v0

    .end local p5
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    if-eqz v4, :cond_2

    .line 326
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    check-cast p4, Ljava/lang/Long;

    .end local p4
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroid/drm/mobile2/OMADRMManager$OnRoapListener;->onRoapUserConcent(J)Z

    goto/16 :goto_0

    .line 329
    .restart local p4
    :cond_2
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "ROAP LISTENER is NOT SET"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 333
    .restart local p5
    :pswitch_5
    const-string v3, "application/vnd.oma.drm.dcf"

    .line 334
    .local v3, mime:Ljava/lang/String;
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ODF_START_DOWNLOAD:file path is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nfile size is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    if-eqz v4, :cond_3

    .line 337
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-interface {v4, p4, p5, p6, v3}, Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;->onStartDownload(Ljava/lang/String;JLjava/lang/String;)Z

    goto/16 :goto_0

    .line 340
    .restart local p4
    :cond_3
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "mOnDownloadListener is NOT SET"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 345
    .end local v3           #mime:Ljava/lang/String;
    :pswitch_6
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "CO_DOWNLOAD_PROGRESS:"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    if-eqz v4, :cond_4

    .line 347
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    check-cast p4, [B

    .end local p4
    check-cast p4, [B

    invoke-interface {v4, p4, p2}, Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;->onProgressDownload([BI)Z

    .line 352
    :goto_1
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "ByteArrayOutputStream: Success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 350
    .restart local p4
    :cond_4
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "mOnDownloadListener is NOT SET"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 355
    :pswitch_7
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v5, "CO_DOWNLOAD_FINISH:"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v4, v4, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;->onStopDownload(Z)Z

    goto/16 :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private native roapInit()V
.end method

.method private sendHttpRequest(Ljava/lang/Object;I)V
    .locals 8
    .parameter "obj"
    .parameter "type"

    .prologue
    .line 132
    move-object v0, p1

    check-cast v0, Landroid/drm/mobile2/HttpConfig;

    move-object v1, v0

    .line 133
    .local v1, config:Landroid/drm/mobile2/HttpConfig;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/drm/mobile2/HttpConfig;->postData:[C

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Url is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/drm/mobile2/HttpConfig;->pUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n Method is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/drm/mobile2/HttpConfig;->method:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n config post data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    iget-object v7, v1, Landroid/drm/mobile2/HttpConfig;->postData:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nconfig header"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/drm/mobile2/HttpConfig;->pSendHeader:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Http request rcvd"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    new-instance v2, Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/drm/mobile2/DrmRoapManager$DataHandler;-><init>(Landroid/drm/mobile2/DrmRoapManager;Landroid/os/Looper;)V

    .line 149
    .local v2, datahandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/drm/mobile2/DrmRoapManager$HttpThread;

    invoke-direct {v4, p0, v1, v2}, Landroid/drm/mobile2/DrmRoapManager$HttpThread;-><init>(Landroid/drm/mobile2/DrmRoapManager;Landroid/drm/mobile2/HttpConfig;Landroid/drm/mobile2/DrmRoapManager$DataHandler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    .local v3, httpThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 152
    return-void
.end method


# virtual methods
.method public native Drm2GoSilentURL(Ljava/lang/String;)Z
.end method

.method public native Drm2TransactionTracking(Z)Z
.end method

.method public native ProcessHttpResponse(Landroid/drm/mobile2/DrmHttpEvent;)V
.end method

.method public native SubmitUserConsent(JZZ)V
.end method

.method public cancelRoapProcess()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Landroid/drm/mobile2/HttpManager;->closeHttpConnection()Z

    move-result v0

    .line 226
    .local v0, status:Z
    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v2, "Client is closed succesfully.Interrupt the thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->httpThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->httpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 234
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/drm/mobile2/DrmRoapManager;->Drm2DownloadCancel()Z

    move-result v0

    .line 235
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drm2DownloadCancel success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v0

    .line 231
    :cond_1
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v2, "Client is already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
    .locals 1
    .parameter "dcfFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0, p1}, Landroid/drm/mobile2/DrmRoapManager;->dcfHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public native native_drm_init()Z
.end method

.method public native native_drm_install_cert()Z
.end method

.method postCallBackfromNative(IIILjava/lang/Object;J)V
    .locals 3
    .parameter "what"
    .parameter "ext1"
    .parameter "ext2"
    .parameter "obj"
    .parameter "ext3"

    .prologue
    .line 270
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GOT THE CALLBACK FROM  NATIVE what is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ext1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct/range {p0 .. p6}, Landroid/drm/mobile2/DrmRoapManager;->handlenativecallback(IIILjava/lang/Object;J)V

    .line 285
    return-void
.end method

.method public processRoap(Ljava/lang/String;ILjava/lang/String;J)Z
    .locals 3
    .parameter "strRoap"
    .parameter "strRoapSize"
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    .line 242
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v1, "Inside ProcessRoap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct/range {p0 .. p5}, Landroid/drm/mobile2/DrmRoapManager;->DrmStore2Ro(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public processRoap([BI)Z
    .locals 3
    .parameter "buf"
    .parameter "size"

    .prologue
    .line 251
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v1, "Inside ProcessRoap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0, p2, p1}, Landroid/drm/mobile2/DrmRoapManager;->DrmStore2RoTrigger(I[B)Z

    move-result v0

    return v0
.end method

.method declared-synchronized queryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z
    .locals 1
    .parameter "file"
    .parameter "drmConInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/drm/mobile2/DrmRoapManager;->drm2QueryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
