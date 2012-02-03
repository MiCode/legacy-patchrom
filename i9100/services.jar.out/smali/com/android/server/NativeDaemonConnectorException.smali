.class public Lcom/android/server/NativeDaemonConnectorException;
.super Ljava/lang/RuntimeException;
.source "NativeDaemonConnectorException.java"


# instance fields
.field private mCmd:Ljava/lang/String;

.field private mCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mCode:I

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "cmd"
    .parameter "error"

    .prologue
    .line 36
    const-string v0, "Cmd {%s} failed with code %d : {%s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mCode:I

    .line 37
    iput p1, p0, Lcom/android/server/NativeDaemonConnectorException;->mCode:I

    .line 38
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnectorException;->mCmd:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mCode:I

    .line 32
    return-void
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mCode:I

    return v0
.end method
