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

    .line 51
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    .line 87
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
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 98
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 101
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 104
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-void

    .line 108
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 109
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
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

    .line 631
    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_1

    .line 671
    :cond_0
    return-void

    .line 637
    :cond_1
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Credentials;->getPid()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->capgetPermitted(I)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 656
    .local v1, permittedCaps:J
    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    xor-long/2addr v3, v9

    iget-wide v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    .line 657
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Effective capabilities cannot be superset of  permitted capabilities"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 646
    .end local v1           #permittedCaps:J
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 647
    .local v0, ex:Ljava/io/IOException;
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Error retrieving peer\'s capabilities."

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 667
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #permittedCaps:J
    :cond_2
    xor-long v3, v1, v9

    iget-wide v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 668
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Peer specified unpermitted capabilities"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static applyDebuggerSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 585
    const-string v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 588
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
    .line 606
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 608
    .local v0, peerUid:I
    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 611
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "This UID may not specify rlimits."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
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

    .line 534
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .line 536
    .local v1, peerUid:I
    if-nez v1, :cond_3

    .line 565
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v3, :cond_1

    .line 566
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 567
    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 569
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v3, :cond_2

    .line 570
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 571
    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 573
    :cond_2
    return-void

    .line 538
    :cond_3
    if-ne v1, v5, :cond_5

    .line 540
    const-string/jumbo v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
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

    .line 549
    .local v2, uidRestricted:Z
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v3, v5, :cond_0

    .line 551
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "System UID may not launch process with UID < 1000"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    .end local v2           #uidRestricted:Z
    :cond_4
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 557
    .end local v0           #factoryTest:Ljava/lang/String;
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v3, :cond_0

    .line 559
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
    .line 694
    iget v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-eqz v8, :cond_0

    .line 695
    const-wide/16 v8, 0x0

    iput-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    iput-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 719
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    const-string v9, "android.permission.CALL_PRIVILEGED"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    iget v11, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    invoke-interface {v8, v9, v10, v11}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_1

    .line 722
    const-string v8, "Zygote"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Zygote: pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has CALL PRIVILEGED permission, then "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "set capability for CAP_SYS_ADMIN (21)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const-wide/32 v10, 0x200000

    or-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 725
    iget-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const-wide/32 v10, 0x200000

    or-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    :try_start_1
    iget-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/internal/os/ZygoteInit;->setCapabilities(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    :cond_0
    :goto_1
    iget-boolean v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->peerWait:Z

    if-eqz v8, :cond_2

    .line 746
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/os/ZygoteInit;->setCloseOnExec(Ljava/io/FileDescriptor;Z)V

    .line 747
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    sput-object v8, Lcom/android/internal/os/ZygoteConnection;->sPeerWaitSocket:Landroid/net/LocalSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 757
    :goto_2
    if-eqz p2, :cond_4

    .line 759
    const/4 v8, 0x0

    :try_start_3
    aget-object v8, p2, v8

    const/4 v9, 0x1

    aget-object v9, p2, v9

    const/4 v10, 0x2

    aget-object v10, p2, v10

    invoke-static {v8, v9, v10}, Lcom/android/internal/os/ZygoteInit;->reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 762
    move-object v0, p2

    .local v0, arr$:[Ljava/io/FileDescriptor;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v4, v0, v5

    .line 763
    .local v4, fd:Ljava/io/FileDescriptor;
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->closeDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 762
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 727
    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v4           #fd:Ljava/io/FileDescriptor;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    :try_start_4
    iget-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const-wide/32 v10, -0x200001

    and-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 728
    iget-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const-wide/32 v10, -0x200001

    and-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 732
    .local v3, ex:Landroid/os/RemoteException;
    const-string v8, "Zygote"

    const-string v9, "Zygote: checkPermission failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 739
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 740
    .local v3, ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    const-string v9, "Error setting capabilities"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 748
    .end local v3           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 749
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    const-string v9, "Zygote Child: error setting peer wait socket to be close-on-exec"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 753
    .end local v3           #ex:Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 754
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    goto :goto_2

    .line 765
    .restart local v0       #arr$:[Ljava/io/FileDescriptor;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_3
    :try_start_5
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 771
    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_4
    :goto_4
    iget-boolean v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v8, :cond_5

    .line 772
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/os/RuntimeInit;->zygoteInit([Ljava/lang/String;)V

    .line 804
    :goto_5
    return-void

    .line 766
    :catch_3
    move-exception v8

    move-object v3, v8

    .line 767
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    const-string v9, "Error reopening stdio"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 776
    .end local v3           #ex:Ljava/io/IOException;
    :cond_5
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 777
    new-instance v2, Ldalvik/system/PathClassLoader;

    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 786
    .local v2, cloader:Ljava/lang/ClassLoader;
    :goto_6
    :try_start_6
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v1, v8, v9
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    .line 792
    .local v1, className:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    new-array v7, v8, [Ljava/lang/String;

    .line 795
    .local v7, mainArgs:[Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    :try_start_7
    invoke-static {v2, v1, v7}, Lcom/android/internal/os/ZygoteInit;->invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 800
    :catch_4
    move-exception v3

    .line 801
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v8, "Error starting. "

    invoke-static {p3, v8, v3}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 781
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #cloader:Ljava/lang/ClassLoader;
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .end local v7           #mainArgs:[Ljava/lang/String;
    :cond_6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .restart local v2       #cloader:Ljava/lang/ClassLoader;
    goto :goto_6

    .line 787
    :catch_5
    move-exception v8

    move-object v3, v8

    .line 788
    .local v3, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "Missing required class name argument"

    const/4 v9, 0x0

    invoke-static {p3, v8, v9}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .locals 8
    .parameter "pid"
    .parameter "descriptors"
    .parameter "parsedArgs"

    .prologue
    const/4 v7, 0x1

    const-string v6, "Zygote"

    .line 820
    if-lez p1, :cond_0

    .line 823
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v5}, Landroid/net/Credentials;->getPid()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/os/ZygoteInit;->getpgid(I)I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/internal/os/ZygoteInit;->setpgid(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 836
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

    .line 837
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->closeDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 836
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 824
    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 829
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #arr$:[Ljava/io/FileDescriptor;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 841
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Error closing passed descriptors in parent process"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v1           #ex:Ljava/io/IOException;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 856
    iget-boolean v5, p3, Lcom/android/internal/os/ZygoteConnection$Arguments;->peerWait:Z

    if-eqz v5, :cond_2

    .line 858
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    move v5, v7

    .line 864
    :goto_3
    return v5

    .line 847
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 848
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Error reading from command socket"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    .line 849
    goto :goto_3

    .line 859
    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 860
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Zygote: error closing sockets"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 864
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
    .line 877
    const-string v0, "Zygote"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    if-eqz p0, :cond_0

    .line 879
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

    .line 881
    :cond_0
    return-void

    :cond_1
    move-object v1, p2

    .line 879
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
    .line 486
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, s:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 490
    const/4 v5, 0x0

    .line 512
    :goto_0
    return-object v5

    .line 492
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 499
    .local v0, argc:I
    const/16 v5, 0x400

    if-le v0, v5, :cond_1

    .line 500
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 493
    .end local v0           #argc:I
    .end local v4           #s:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 494
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v5, "Zygote"

    const-string v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v5, Ljava/io/IOException;

    const-string v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 503
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #argc:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    .line 504
    .local v3, result:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 505
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 506
    aget-object v5, v3, v2

    if-nez v5, :cond_2

    .line 508
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 504
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v3

    .line 512
    goto :goto_0
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 248
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 120
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
    .line 135
    const/16 v0, 0xa

    .line 147
    .local v0, loopCount:I
    :cond_0
    if-gtz v0, :cond_1

    .line 148
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 149
    const/16 v0, 0xa

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    return-void

    .line 151
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

    .line 177
    const/4 v4, 0x0

    .line 181
    .local v4, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, args:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    .local v1, descriptors:[Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    move v8, v12

    .line 237
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #descriptors:[Ljava/io/FileDescriptor;
    :goto_0
    return v8

    .line 183
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 184
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

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    move v8, v12

    .line 186
    goto :goto_0

    .line 196
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #descriptors:[Ljava/io/FileDescriptor;
    :cond_0
    const/4 v3, 0x0

    .line 198
    .local v3, newStderr:Ljava/io/PrintStream;
    if-eqz v1, :cond_1

    array-length v8, v1

    const/4 v9, 0x3

    if-lt v8, v9, :cond_1

    .line 199
    new-instance v3, Ljava/io/PrintStream;

    .end local v3           #newStderr:Ljava/io/PrintStream;
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 206
    .restart local v3       #newStderr:Ljava/io/PrintStream;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v5, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 208
    .end local v4           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v5, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v5, v8}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 209
    invoke-static {v5}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 210
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v5, v8}, Lcom/android/internal/os/ZygoteConnection;->applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 211
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v5, v8}, Lcom/android/internal/os/ZygoteConnection;->applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 213
    const/4 v7, 0x0

    check-cast v7, [[I

    .line 215
    .local v7, rlimits:[[I
    iget-object v8, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    .line 216
    iget-object v8, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7           #rlimits:[[I
    check-cast v7, [[I

    .line 219
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

    .line 230
    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v7           #rlimits:[[I
    .restart local v4       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_1
    if-nez v6, :cond_3

    .line 232
    invoke-direct {p0, v4, v1, v3}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V

    move v8, v12

    .line 234
    goto :goto_0

    .line 221
    .end local v6           #pid:I
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 222
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :goto_2
    const-string v8, "Invalid zygote arguments"

    invoke-static {v3, v8, v2}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    const/4 v6, -0x1

    .line 228
    .restart local v6       #pid:I
    goto :goto_1

    .line 224
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    .end local v6           #pid:I
    :catch_2
    move-exception v8

    move-object v2, v8

    .line 225
    .local v2, ex:Lcom/android/internal/os/ZygoteSecurityException;
    :goto_3
    const-string v8, "Zygote security policy prevents request: "

    invoke-static {v3, v8, v2}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    const/4 v6, -0x1

    .restart local v6       #pid:I
    goto :goto_1

    .line 237
    .end local v2           #ex:Lcom/android/internal/os/ZygoteSecurityException;
    :cond_3
    invoke-direct {p0, v6, v1, v4}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z

    move-result v8

    goto/16 :goto_0

    .line 224
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

    .line 221
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
