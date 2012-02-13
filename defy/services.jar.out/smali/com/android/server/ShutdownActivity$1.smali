.class Lcom/android/server/ShutdownActivity$1;
.super Ljava/lang/Object;
.source "ShutdownActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShutdownActivity;


# direct methods
.method constructor <init>(Lcom/android/server/ShutdownActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$000(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method
