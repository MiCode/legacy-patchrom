.class Lcom/android/internal/atfwd/AtCtsaCmdHandler$1;
.super Landroid/os/HandlerThread;
.source "AtCtsaCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/atfwd/AtCtsaCmdHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method
