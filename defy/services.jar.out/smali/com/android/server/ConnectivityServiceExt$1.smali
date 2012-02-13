.class Lcom/android/server/ConnectivityServiceExt$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityServiceExt;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityServiceExt;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/ConnectivityServiceExt$1;->this$0:Lcom/android/server/ConnectivityServiceExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setToTempFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "proxy"
    .parameter "exceptions"

    .prologue
    const-string v6, "/tmp/wifisetting"

    const-string v7, "ConnectivityService"

    const-string v0, "/tmp/wifisetting"

    .local v0, TEMP_FILE_NAME:Ljava/lang/String;
    const-string v5, "ConnectivityService"

    const-string v5, "Set the wifi proxy to the temp file!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .local v4, props:Ljava/util/Properties;
    new-instance v2, Ljava/io/File;

    const-string v5, "/tmp/wifisetting"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ConnectivityService"

    const-string v6, "Cannot create the temp file for wifi setting!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "chmod 644 /tmp/wifisetting"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p1, ""

    const-string p2, ""

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p2, ""

    :cond_2
    const-string v5, "proxy"

    invoke-virtual {v4, v5, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "proxyExceptions"

    invoke-virtual {v4, v5, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v5, "/tmp/wifisetting"

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v3, fileOutput:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v3           #fileOutput:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "ConnectivityService"

    const-string v5, "Cannot access the wifi setting file!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/io/IOException;
    const-string v5, "ConnectivityService"

    const-string v5, "Cannot store the wifi setting file!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.motorola.android.net.wifi.PROXY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "proxy"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, proxy:Ljava/lang/String;
    const-string v3, "proxyExceptions"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, exceptions:Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityServiceExt$1;->setToTempFile(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #exceptions:Ljava/lang/String;
    .end local v2           #proxy:Ljava/lang/String;
    :cond_0
    return-void
.end method
