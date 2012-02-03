.class Lcom/android/internal/os/AndroidPrintStream;
.super Lcom/android/internal/os/LoggingPrintStream;
.source "AndroidPrintStream.java"


# instance fields
.field private final priority:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "priority"
    .parameter "tag"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/os/LoggingPrintStream;-><init>()V

    .line 38
    if-nez p2, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput p1, p0, Lcom/android/internal/os/AndroidPrintStream;->priority:I

    .line 43
    iput-object p2, p0, Lcom/android/internal/os/AndroidPrintStream;->tag:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 2
    .parameter "line"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/os/AndroidPrintStream;->priority:I

    iget-object v1, p0, Lcom/android/internal/os/AndroidPrintStream;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
