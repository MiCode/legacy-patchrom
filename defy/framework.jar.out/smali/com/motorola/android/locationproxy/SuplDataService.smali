.class public Lcom/motorola/android/locationproxy/SuplDataService;
.super Landroid/os/Handler;
.source "SuplDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/SuplDataService$1;,
        Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;,
        Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;,
        Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;
    }
.end annotation


# static fields
.field private static final ADDRESSTYPE_DNS:I = 0x1

.field private static final ADDRESSTYPE_IP:I = 0x0

.field private static final CONNECTION_TIMEOUT:I = 0x7530

.field private static final FTOUTPUT_TAG:Ljava/lang/String; = "FTOUTPUT"

.field private static final TAG:Ljava/lang/String; = "SUPLJ"


# instance fields
.field private mDataHandler:Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

.field private mHost:Ljava/lang/String;

.field private mIsClosing:Z

.field private mIsTlsMode:Z

.field private mPort:S

.field private mSelector:Ljava/nio/channels/Selector;

.field private mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

.field private mSocketChannel:Ljava/nio/channels/SocketChannel;

.field private mSslContext:Ljavax/net/ssl/SSLContext;

.field private mSslSocket:Ljavax/net/ssl/SSLSocket;

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/motorola/android/locationproxy/ISuplCommands;)V
    .locals 3
    .parameter "shimProxy"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    new-instance v0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mDataHandler:Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

    iput-boolean v2, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    iput-boolean v2, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    const/16 v0, 0x8f

    invoke-interface {p1, p0, v0, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->registerForSuplRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/android/locationproxy/SuplDataService;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplDataService;->flush(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/locationproxy/SuplDataService;)Ljava/nio/channels/Selector;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/locationproxy/SuplDataService;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/locationproxy/SuplDataService;)Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mDataHandler:Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/locationproxy/SuplDataService;)Lcom/motorola/android/locationproxy/ISuplCommands;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/android/locationproxy/SuplDataService;)Ljavax/net/ssl/SSLSocket;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/android/locationproxy/SuplDataService;Ljava/nio/ByteBuffer;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplDataService;->byteBuffer2ByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/android/locationproxy/SuplDataService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    return v0
.end method

.method private byteBuffer2ByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .parameter "buffer"

    .prologue
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v0, v1, [B

    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private createSslSocket(Ljava/lang/String;I)V
    .locals 3
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .local v0, ssf:Ljavax/net/ssl/SSLSocketFactory;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    const-string v1, "FTOUTPUT"

    const-string v2, "Handshake completed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private flush(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .local v0, bytesWrote:I
    const-string v1, "SUPLJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bytes written: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #bytesWrote:I
    :cond_0
    return-void
.end method

.method private initSslContext()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const-string v8, "File NOT Found:"

    const-string v9, "SUPLJ"

    iget-object v8, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v8, :cond_0

    const-string v8, "SUPLJ"

    const-string v8, "initSslContext: mSslContext has inited"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v8, "SUPLJ"

    const-string v8, "initSslContext: initing Ssl Context..."

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "java.home"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "etc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "security"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, keyStoreDir:Ljava/lang/String;
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/security/KeyStore;

    .local v5, keyStores:[Ljava/security/KeyStore;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "suplcerts.bks"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, suplKeyStoreName:Ljava/lang/String;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    aput-object v8, v5, v12

    const/4 v2, 0x0

    .local v2, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #is:Ljava/io/FileInputStream;
    .local v3, is:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v5, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v3, :cond_7

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .end local v3           #is:Ljava/io/FileInputStream;
    :goto_1
    const/4 v2, 0x0

    .restart local v2       #is:Ljava/io/FileInputStream;
    :cond_1
    :goto_2
    const-string v8, "javax.net.ssl.trustStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, defaultKeyStoreName:Ljava/lang/String;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    aput-object v8, v5, v13

    if-eqz v0, :cond_2

    :try_start_3
    const-string v8, "NONE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    :cond_2
    const-string v8, "SUPLJ"

    const-string v9, "No Default Keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    aget-object v8, v5, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    const/4 v2, 0x0

    :cond_3
    new-array v6, v13, [Ljavax/net/ssl/TrustManager;

    .local v6, mgrs:[Ljavax/net/ssl/TrustManager;
    new-instance v8, Lcom/motorola/android/locationproxy/SuplTrustManager;

    invoke-direct {v8, v5}, Lcom/motorola/android/locationproxy/SuplTrustManager;-><init>([Ljava/security/KeyStore;)V

    aput-object v8, v6, v12

    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    iget-object v8, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v8, v11, v6, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto/16 :goto_0

    .end local v0           #defaultKeyStoreName:Ljava/lang/String;
    .end local v6           #mgrs:[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v8

    move-object v1, v8

    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_5
    const/4 v8, 0x0

    :try_start_5
    aget-object v8, v5, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v8, "SUPLJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File NOT Found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_1

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    const/4 v2, 0x0

    :cond_4
    throw v8

    .restart local v0       #defaultKeyStoreName:Ljava/lang/String;
    :cond_5
    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    const/4 v8, 0x1

    :try_start_9
    aget-object v8, v5, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-object v2, v3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto :goto_3

    :catch_2
    move-exception v8

    move-object v1, v8

    .restart local v1       #e:Ljava/io/FileNotFoundException;
    :goto_8
    const/4 v8, 0x0

    :try_start_a
    aget-object v8, v5, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v8, "SUPLJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File NOT Found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_3

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_4

    :catch_3
    move-exception v8

    goto/16 :goto_4

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v8

    :goto_9
    if-eqz v2, :cond_6

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :goto_a
    const/4 v2, 0x0

    :cond_6
    throw v8

    .end local v0           #defaultKeyStoreName:Ljava/lang/String;
    :catch_4
    move-exception v9

    goto :goto_7

    .restart local v0       #defaultKeyStoreName:Ljava/lang/String;
    :catch_5
    move-exception v9

    goto :goto_a

    :catch_6
    move-exception v8

    goto/16 :goto_4

    .end local v0           #defaultKeyStoreName:Ljava/lang/String;
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    goto/16 :goto_1

    .restart local v0       #defaultKeyStoreName:Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v0           #defaultKeyStoreName:Ljava/lang/String;
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :catch_9
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :cond_7
    move-object v2, v3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private static intToIp(I)Ljava/lang/String;
    .locals 3
    .parameter "i"

    .prologue
    const-string v2, "."

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private openPlainTextConnection(Ljava/lang/String;I)V
    .locals 9
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v8, "SUPLJ"

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isCarrierSetingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isFallbackSuplHost(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isAgpsPdpEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Carrier PDP hasn\'t been enable"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-static {p1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isConfiguredHslp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsNetwork(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "SUPLJ"

    const-string v5, "Opening SocketChannel..."

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    :cond_3
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .local v4, socketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unresolved host address!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5, v4}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    :cond_6
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    const-wide/16 v6, 0x7530

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v3

    .local v3, result:I
    const-string v5, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result of select(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_9

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .local v1, key:Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_8

    const-string v5, "SUPLJ"

    const-string v5, "Ready to connect to server."

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .local v2, keyChannel:Ljava/nio/channels/SocketChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "SUPLJ"

    const-string v5, "Waitting for connection to be established..."

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v5, "SUPLJ"

    const-string v5, "Connection established successfully."

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    and-int/lit8 v5, v5, -0x9

    invoke-virtual {v1, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .end local v2           #keyChannel:Ljava/nio/channels/SocketChannel;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :cond_9
    const-string v5, "SUPLJ"

    const-string v5, "Timeout"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->close()V

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Connect failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #result:I
    .end local v4           #socketAddress:Ljava/net/InetSocketAddress;
    :cond_a
    return-void
.end method

.method private openTlsSession(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "fqdn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/locationproxy/SuplDataService;->initSslContext()V

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/locationproxy/SuplDataService;->createSslSocket(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/motorola/android/locationproxy/SuplDataService;->verifyCnSan(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FTOUTPUT"

    const-string v1, "CN or SAN Verification failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Common Name or Subject Alternative Name Verification failed."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private scheduleHttpPost(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "cmdId"
    .parameter "httpUrl"
    .parameter "path"
    .parameter "userAgent"

    .prologue
    new-instance v0, Lcom/motorola/android/locationproxy/SuplHttpPost;

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/SuplHttpPost;-><init>(Lcom/motorola/android/locationproxy/ISuplCommands;)V

    .local v0, httpPost:Lcom/motorola/android/locationproxy/SuplHttpPost;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/motorola/android/locationproxy/SuplHttpPost;->scheduleHttpPost(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private verifyCnSan(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .parameter "fqdn"
    .parameter "session"

    .prologue
    new-instance v0, Lcom/motorola/android/locationproxy/FqdnVerifier;

    invoke-direct {v0}, Lcom/motorola/android/locationproxy/FqdnVerifier;-><init>()V

    .local v0, v:Ljavax/net/ssl/HostnameVerifier;
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const-string v3, "SUPLJ"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    :cond_1
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    :cond_3
    const-string v1, "SUPLJ"

    const-string v2, "Closing done!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const-string v1, "SUPLJ"

    const-string v1, "IOException:"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    const-string v21, "SUPLJ"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Message Received:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    const-string v21, "SUPLJ"

    const-string v22, "Oops! Shouldn\'t be here."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p1
    :goto_0
    return-void

    .restart local p1
    :sswitch_0
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v7

    .local v7, data:[Ljava/lang/Object;
    const/16 v21, 0x0

    aget-object p1, v7, v21

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, cmdId:I
    const/16 v21, 0x1

    aget-object p1, v7, v21

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .local v16, linkId:I
    const/16 v21, 0x4

    aget-object p1, v7, v21

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, addressType:I
    if-nez v5, :cond_2

    const/16 v21, 0x2

    aget-object p1, v7, v21

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/motorola/android/locationproxy/SuplDataService;->intToIp(I)Ljava/lang/String;

    move-result-object v21

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    const/16 v21, 0x3

    aget-object p1, v7, v21

    check-cast p1, Ljava/lang/Short;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Short;->shortValue()S

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    const-string v21, "SUPLJ"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CmdId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " addressType:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mHost:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mPort:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    move/from16 v23, v0

    const v24, 0xffff

    and-int v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v21

    if-nez v21, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    move/from16 v22, v0

    const v23, 0xffff

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/SuplDataService;->openPlainTextConnection(Ljava/lang/String;I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V

    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    :cond_1
    sget-object v21, Lcom/motorola/android/locationproxy/SuplDataService$1;->$SwitchMap$java$lang$Thread$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread$State;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ConnectionPendingException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v21

    move-object/from16 v15, v21

    .local v15, ioe:Ljava/io/IOException;
    const-string v21, "SUPLJ"

    const-string v22, "IOException "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v15

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V

    goto/16 :goto_0

    .end local v15           #ioe:Ljava/io/IOException;
    :cond_2
    new-instance v21, Ljava/lang/String;

    const/16 v22, 0x5

    aget-object p1, v7, v22

    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_1

    :cond_3
    :try_start_1
    const-string v21, "SUPLJ"

    const-string v22, "Oops! Already connected."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/ConnectionPendingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v21

    move-object/from16 v11, v21

    .local v11, ex:Ljava/nio/channels/ConnectionPendingException;
    const-string v21, "SUPLJ"

    const-string v22, "ConnectionPendingException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V

    goto/16 :goto_0

    .end local v11           #ex:Ljava/nio/channels/ConnectionPendingException;
    :pswitch_0
    :try_start_2
    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V

    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/channels/ConnectionPendingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .end local v5           #addressType:I
    .end local v6           #cmdId:I
    .end local v7           #data:[Ljava/lang/Object;
    .end local v16           #linkId:I
    .restart local p1
    :sswitch_1
    const/4 v10, 0x0

    .local v10, errorCode:B
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #data:[Ljava/lang/Object;
    const/16 v21, 0x0

    aget-object p1, v7, v21

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .restart local v6       #cmdId:I
    const/16 v21, 0x1

    aget-object p1, v7, v21

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .restart local v16       #linkId:I
    new-instance v12, Ljava/lang/String;

    const/16 v21, 0x2

    aget-object p1, v7, v21

    check-cast p1, [B

    check-cast p1, [B

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v12, fqdn:Ljava/lang/String;
    const-string v21, "SUPLJ"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "fqdn="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->interrupt()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    move/from16 v22, v0

    const v23, 0xffff

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/SuplDataService;->openTlsSession(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V

    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :cond_5
    const-string v21, "SUPLJ"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "errorCode = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    :goto_4
    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move v3, v10

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendTlsResult(IIB)V

    goto/16 :goto_0

    :cond_6
    :try_start_4
    const-string v21, "SUPLJ"

    const-string v22, "What?! Shouldn\'t be here."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v10, 0x1

    goto :goto_3

    :catch_2
    move-exception v21

    move-object/from16 v13, v21

    .local v13, gse:Ljava/security/GeneralSecurityException;
    :try_start_5
    const-string v21, "FTOUTPUT"

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x2

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :cond_7
    const-string v21, "SUPLJ"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "errorCode = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    goto :goto_4

    .end local v13           #gse:Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v21

    move-object/from16 v15, v21

    .restart local v15       #ioe:Ljava/io/IOException;
    :try_start_6
    const-string v21, "FTOUTPUT"

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v10, 0x1

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :cond_8
    const-string v21, "SUPLJ"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "errorCode = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    goto/16 :goto_4

    .end local v15           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v21

    if-eqz v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :cond_9
    const-string v22, "SUPLJ"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "errorCode = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v6

    move/from16 v2, v16

    move v3, v10

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendTlsResult(IIB)V

    throw v21

    .end local v6           #cmdId:I
    .end local v7           #data:[Ljava/lang/Object;
    .end local v10           #errorCode:B
    .end local v12           #fqdn:Ljava/lang/String;
    .end local v16           #linkId:I
    .restart local p1
    :sswitch_2
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #data:[Ljava/lang/Object;
    const/16 v21, 0x0

    aget-object p1, v7, v21

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .restart local v6       #cmdId:I
    const/16 v21, 0x1

    aget-object p1, v7, v21

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .restart local v16       #linkId:I
    const/16 v21, 0x2

    aget-object p1, v7, v21

    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v8, v0

    .local v8, dataToServer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_b

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    const-string v21, "SUPLJ"

    const-string v22, "Sending encrypted data to server..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .local v17, oStream:Ljava/io/OutputStream;
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendSocketDataResult(III)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .end local v17           #oStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v21

    move-object/from16 v9, v21

    .local v9, e:Ljava/lang/Exception;
    const-string v21, "SUPLJ"

    const-string v22, "Error sending data to server:"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendSocketDataResult(III)V

    goto/16 :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_8
    const-string v21, "SUPLJ"

    const-string v22, "Sending plain text to server..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mDataHandler:Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->sendData([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendSocketDataResult(III)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :cond_b
    const-string v21, "SUPLJ"

    const-string v22, "Connection not established!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendSocketDataResult(III)V

    goto/16 :goto_0

    .end local v6           #cmdId:I
    .end local v7           #data:[Ljava/lang/Object;
    .end local v8           #dataToServer:[B
    .end local v16           #linkId:I
    .restart local p1
    :sswitch_3
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #data:[Ljava/lang/Object;
    const/16 v21, 0x0

    aget-object p1, v7, v21

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .restart local v6       #cmdId:I
    const/16 v21, 0x1

    aget-object p1, v7, v21

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .restart local v16       #linkId:I
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v19, v0

    .local v19, tmpThread:Ljava/lang/Thread;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    if-eqz v19, :cond_c

    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendCloseSocketResult(III)V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    goto/16 :goto_0

    :catch_5
    move-exception v9

    .local v9, e:Ljava/lang/InterruptedException;
    const-string v21, "SUPLJ"

    const-string v22, "InterruptedException:"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v6           #cmdId:I
    .end local v7           #data:[Ljava/lang/Object;
    .end local v9           #e:Ljava/lang/InterruptedException;
    .end local v16           #linkId:I
    .end local v19           #tmpThread:Ljava/lang/Thread;
    .restart local p1
    :sswitch_4
    const/4 v10, 0x0

    .restart local v10       #errorCode:B
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #data:[Ljava/lang/Object;
    const/16 v21, 0x0

    aget-object p1, v7, v21

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .restart local v6       #cmdId:I
    new-instance v14, Ljava/lang/String;

    const/16 v21, 0x1

    aget-object p1, v7, v21

    check-cast p1, [B

    check-cast p1, [B

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v14, httpUrl:Ljava/lang/String;
    new-instance v18, Ljava/lang/String;

    const/16 v21, 0x2

    aget-object p1, v7, v21

    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v18, path:Ljava/lang/String;
    new-instance v20, Ljava/lang/String;

    const/16 v21, 0x3

    aget-object p1, v7, v21

    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v20, userAgent:Ljava/lang/String;
    const-string v21, "SUPLJ"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "URL="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", file path="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", UserAgent="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v14

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/android/locationproxy/SuplDataService;->scheduleHttpPost(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_1
        0x80 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
