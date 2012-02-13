.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final MAX_ZYGOTE_ARGC:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I

.field private static sPeerWaitSocket:Landroid/net/LocalSocket;


# instance fields
.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->sPeerWaitSocket:Landroid/net/LocalSocket;

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;)V
    .locals 4
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method private static applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 11
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, -0x1

    const-wide/16 v7, 0x0

    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Credentials;->getPid()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->capgetPermitted(I)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .local v1, permittedCaps:J
    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    xor-long/2addr v3, v9

    iget-wide v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Effective capabilities cannot be superset of  permitted capabilities"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #permittedCaps:J
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/io/IOException;
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Error retrieving peer\'s capabilities."

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #permittedCaps:J
    :cond_2
    xor-long v3, v1, v9

    iget-wide v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Peer specified unpermitted capabilities"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static applyDebuggerSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 2
    .parameter "args"

    .prologue
    const-string v0, "1"

    const-string v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    :cond_0
    return-void
.end method

.method private static applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 3
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .local v0, peerUid:I
    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "This UID may not specify rlimits."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 6
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .local v1, peerUid:I
    if-nez v1, :cond_3

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    :cond_2
    return-void

    :cond_3
    if-ne v1, v5, :cond_5

    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, factoryTest:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v4

    .local v2, uidRestricted:Z
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v3, v5, :cond_0

    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "System UID may not launch process with UID < 1000"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2           #uidRestricted:Z
    :cond_4
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .end local v0           #factoryTest:Ljava/lang/String;
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v3, :cond_0

    :cond_6
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "App UIDs may not specify uid\'s or gid\'s"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    .locals 12
    .parameter "parsedArgs"
    .parameter "descriptors"
    .parameter "newStderr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    iget-boolean v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->peerWait:Z

    if-eqz v8, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/os/ZygoteInit;->setCloseOnExec(Ljava/io/FileDescriptor;Z)V

    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    sput-object v8, Lcom/android/internal/os/ZygoteConnection;->sPeerWaitSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p2, :cond_2

    const/4 v8, 0x0

    :try_start_1
    aget-object v8, p2, v8

    const/4 v9, 0x1

    aget-object v9, p2, v9

    const/4 v10, 0x2

    aget-object v10, p2, v10

    invoke-static {v8, v9, v10}, Lcom/android/internal/os/ZygoteInit;->reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    move-object v0, p2

    .local v0, arr$:[Ljava/io/FileDescriptor;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v4, v0, v5

    .local v4, fd:Ljava/io/FileDescriptor;
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->closeDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v4           #fd:Ljava/io/FileDescriptor;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v8

    move-object v3, v8

    .local v3, ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    const-string v9, "Zygote Child: error setting peer wait socket to be close-on-exec"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3           #ex:Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    goto :goto_0

    .restart local v0       #arr$:[Ljava/io/FileDescriptor;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_1
    :try_start_2
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2
    :goto_2
    iget-boolean v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v8, :cond_3

    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/os/RuntimeInit;->zygoteInit([Ljava/lang/String;)V

    :goto_3
    return-void

    :catch_1
    move-exception v8

    move-object v3, v8

    .restart local v3       #ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    const-string v9, "Error reopening stdio"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v3           #ex:Ljava/io/IOException;
    :cond_3
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v8, :cond_4

    new-instance v2, Ldalvik/system/PathClassLoader;

    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v2, cloader:Ljava/lang/ClassLoader;
    :goto_4
    :try_start_3
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v1, v8, v9
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .local v1, className:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    new-array v7, v8, [Ljava/lang/String;

    .local v7, mainArgs:[Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_4
    invoke-static {v2, v1, v7}, Lcom/android/internal/os/ZygoteInit;->invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v8, "Error starting. "

    invoke-static {p3, v8, v3}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v1           #className:Ljava/lang/String;
    .end local v2           #cloader:Ljava/lang/ClassLoader;
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .end local v7           #mainArgs:[Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .restart local v2       #cloader:Ljava/lang/ClassLoader;
    goto :goto_4

    :catch_3
    move-exception v8

    move-object v3, v8

    .local v3, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "Missing required class name argument"

    const/4 v9, 0x0

    invoke-static {p3, v8, v9}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .locals 8
    .parameter "pid"
    .parameter "descriptors"
    .parameter "parsedArgs"

    .prologue
    const/4 v7, 0x1

    const-string v6, "Zygote"

    if-lez p1, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v5}, Landroid/net/Credentials;->getPid()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/os/ZygoteInit;->getpgid(I)I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/internal/os/ZygoteInit;->setpgid(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, arr$:[Ljava/io/FileDescriptor;
    :try_start_1
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->closeDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #arr$:[Ljava/io/FileDescriptor;
    :catch_1
    move-exception v5

    move-object v1, v5

    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Error closing passed descriptors in parent process"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v1           #ex:Ljava/io/IOException;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    iget-boolean v5, p3, Lcom/android/internal/os/ZygoteConnection$Arguments;->peerWait:Z

    if-eqz v5, :cond_2

    :try_start_3
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    move v5, v7

    :goto_3
    return v5

    :catch_2
    move-exception v5

    move-object v1, v5

    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Error reading from command socket"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    goto :goto_3

    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Zygote: error closing sockets"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v1           #ex:Ljava/io/IOException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private static logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "newStderr"
    .parameter "message"
    .parameter "ex"

    .prologue
    const-string v0, "Zygote"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, s:Ljava/lang/String;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, argc:I
    const/16 v5, 0x400

    if-le v0, v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    const-string v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0           #argc:I
    .end local v4           #s:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v5, "Zygote"

    const-string v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    const-string v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #argc:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    .local v3, result:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    aget-object v5, v3, v2

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/IOException;

    const-string v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v3

    goto :goto_0
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/16 v0, 0xa

    .local v0, loopCount:I
    :cond_0
    if-gtz v0, :cond_1

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    const/16 v0, 0xa

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method runOnce()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .local v4, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v0

    .local v0, args:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, descriptors:[Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    move v8, v12

    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #descriptors:[Ljava/io/FileDescriptor;
    :goto_0
    return v8

    :catch_0
    move-exception v8

    move-object v2, v8

    .local v2, ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException on command socket "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    move v8, v12

    goto :goto_0

    .end local v2           #ex:Ljava/io/IOException;
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #descriptors:[Ljava/io/FileDescriptor;
    :cond_0
    const/4 v3, 0x0

    .local v3, newStderr:Ljava/io/PrintStream;
    if-eqz v1, :cond_1

    array-length v8, v1

    const/4 v9, 0x3

    if-lt v8, v9, :cond_1

    new-instance v3, Ljava/io/PrintStream;

    .end local v3           #newStderr:Ljava/io/PrintStream;
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v3       #newStderr:Ljava/io/PrintStream;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v5, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v5, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v5, v8}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    invoke-static {v5}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v5, v8}, Lcom/android/internal/os/ZygoteConnection;->applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v5, v8}, Lcom/android/internal/os/ZygoteConnection;->applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    const/4 v7, 0x0

    check-cast v7, [[I

    .local v7, rlimits:[[I
    iget-object v8, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7           #rlimits:[[I
    check-cast v7, [[I

    .restart local v7       #rlimits:[[I
    :cond_2
    iget v8, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v9, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v10, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v11, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    invoke-static {v8, v9, v10, v11, v7}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[I)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v6

    .local v6, pid:I
    move-object v4, v5

    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v7           #rlimits:[[I
    .restart local v4       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_1
    if-nez v6, :cond_3

    invoke-direct {p0, v4, v1, v3}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V

    move v8, v12

    goto :goto_0

    .end local v6           #pid:I
    :catch_1
    move-exception v8

    move-object v2, v8

    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :goto_2
    const-string v8, "Invalid zygote arguments"

    invoke-static {v3, v8, v2}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, -0x1

    .restart local v6       #pid:I
    goto :goto_1

    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    .end local v6           #pid:I
    :catch_2
    move-exception v8

    move-object v2, v8

    .local v2, ex:Lcom/android/internal/os/ZygoteSecurityException;
    :goto_3
    const-string v8, "Zygote security policy prevents request: "

    invoke-static {v3, v8, v2}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, -0x1

    .restart local v6       #pid:I
    goto :goto_1

    .end local v2           #ex:Lcom/android/internal/os/ZygoteSecurityException;
    :cond_3
    invoke-direct {p0, v6, v1, v4}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z

    move-result v8

    goto/16 :goto_0

    .end local v4           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v6           #pid:I
    .restart local v5       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_3
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v4       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_3

    .end local v4           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v5       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_4
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v4       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_2
.end method
