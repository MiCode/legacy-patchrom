.class Lcom/android/server/EncryptService$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method private constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/server/EncryptService$CallStateListener;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/android/server/EncryptService$CallStateListener;-><init>(Lcom/android/server/EncryptService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const-string v3, "EncryptService"

    .line 821
    if-nez p1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/server/EncryptService$CallStateListener;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/server/EncryptService;->access$900(Lcom/android/server/EncryptService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EncryptService$CallStateListener;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mCallStateListener:Lcom/android/server/EncryptService$CallStateListener;
    invoke-static {v1}, Lcom/android/server/EncryptService;->access$800(Lcom/android/server/EncryptService;)Lcom/android/server/EncryptService$CallStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 823
    const-string v0, "EncryptService"

    const-string v0, "Call state idle, wait 5 secs"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    const-string v0, "EncryptService"

    const-string v0, "Send remount msg to vold"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/android/server/EncryptService$CallStateListener;->this$0:Lcom/android/server/EncryptService;

    const-string v1, "remountboot"

    invoke-virtual {v0, v1}, Lcom/android/server/EncryptService;->doRemountBoot(Ljava/lang/String;)I

    .line 837
    :cond_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    goto :goto_0
.end method
