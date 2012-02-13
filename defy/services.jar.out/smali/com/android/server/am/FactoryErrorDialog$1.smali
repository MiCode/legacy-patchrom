.class Lcom/android/server/am/FactoryErrorDialog$1;
.super Landroid/os/Handler;
.source "FactoryErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FactoryErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FactoryErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/FactoryErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/FactoryErrorDialog$1;->this$0:Lcom/android/server/am/FactoryErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Rebooting from failed factory test"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
