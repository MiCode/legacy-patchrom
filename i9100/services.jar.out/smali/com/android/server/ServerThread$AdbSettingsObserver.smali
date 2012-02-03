.class Lcom/android/server/ServerThread$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;


# direct methods
.method public constructor <init>(Lcom/android/server/ServerThread;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/ServerThread$AdbSettingsObserver;->this$0:Lcom/android/server/ServerThread;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x0

    const-string v8, "enableAdb : "

    const-string v7, "adb_enabled"

    const-string v6, "ADB"

    .line 100
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 101
    const-string v2, "ADB"

    const-string v3, "Thread.sleep(200)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const-string v2, "ADB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableAdb : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ServerThread$AdbSettingsObserver;->this$0:Lcom/android/server/ServerThread;

    #getter for: Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/ServerThread;->access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/server/ServerThread$AdbSettingsObserver;->this$0:Lcom/android/server/ServerThread;

    #getter for: Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/ServerThread;->access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 112
    .local v1, enableAdb:Z
    :goto_1
    const-string v2, "persist.service.adb.enable"

    if-eqz v1, :cond_1

    const-string v3, "1"

    :goto_2
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "ADB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableAdb : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ServerThread$AdbSettingsObserver;->this$0:Lcom/android/server/ServerThread;

    #getter for: Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/ServerThread;->access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 102
    .end local v1           #enableAdb:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 104
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_0
    move v1, v5

    .line 109
    goto :goto_1

    .line 112
    .restart local v1       #enableAdb:Z
    :cond_1
    const-string v3, "0"

    goto :goto_2
.end method
