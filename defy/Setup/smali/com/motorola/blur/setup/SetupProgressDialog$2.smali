.class Lcom/motorola/blur/setup/SetupProgressDialog$2;
.super Ljava/util/TimerTask;
.source "SetupProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/SetupProgressDialog;->setTimer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/SetupProgressDialog;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/SetupProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/motorola/blur/setup/SetupProgressDialog$2;->this$0:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog$2;->this$0:Lcom/motorola/blur/setup/SetupProgressDialog;

    #calls: Lcom/motorola/blur/setup/SetupProgressDialog;->setIntervalProgress()V
    invoke-static {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->access$000(Lcom/motorola/blur/setup/SetupProgressDialog;)V

    .line 160
    return-void
.end method
