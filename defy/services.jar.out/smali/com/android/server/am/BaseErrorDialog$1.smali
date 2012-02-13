.class Lcom/android/server/am/BaseErrorDialog$1;
.super Landroid/os/Handler;
.source "BaseErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z
    invoke-static {v0, v1}, Lcom/android/server/am/BaseErrorDialog;->access$002(Lcom/android/server/am/BaseErrorDialog;Z)Z

    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    const/4 v1, 0x1

    #calls: Lcom/android/server/am/BaseErrorDialog;->setEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/server/am/BaseErrorDialog;->access$100(Lcom/android/server/am/BaseErrorDialog;Z)V

    :cond_0
    return-void
.end method
