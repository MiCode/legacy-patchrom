.class Landroid/os/Looper$HandlerException;
.super Ljava/lang/Exception;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlerException"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "cause"

    .prologue
    invoke-static {p2}, Landroid/os/Looper$HandlerException;->createMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static createMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter "cause"

    .prologue
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .local v0, causeMsg:Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
