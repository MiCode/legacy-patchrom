.class Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
.super Ljava/lang/Thread;
.source "DeviceShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamHandler"
.end annotation


# instance fields
.field output:Ljava/lang/StringBuffer;

.field private final sink:Z

.field private final stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .parameter "stream"
    .parameter "sink"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 200
    iput-boolean p2, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->sink:Z

    .line 201
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->stream:Ljava/io/InputStream;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->start()V

    .line 203
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 208
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->sink:Z

    if-eqz v3, :cond_2

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    .line 213
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->stream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 215
    .local v0, b:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 216
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 219
    .end local v0           #b:Ljava/io/BufferedReader;
    .end local v2           #s:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 220
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
