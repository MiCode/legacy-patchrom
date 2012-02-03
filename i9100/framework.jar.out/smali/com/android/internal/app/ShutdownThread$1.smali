.class final Lcom/android/internal/app/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 170
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$100(Landroid/content/Context;)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$200(Landroid/content/Context;)V

    goto :goto_0
.end method
