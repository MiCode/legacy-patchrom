.class Lcom/broadcom/bt/service/fm/FmTransmitterService$1;
.super Landroid/os/Handler;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 471
    iget v0, p1, Landroid/os/Message;->what:I

    .line 481
    return-void
.end method
