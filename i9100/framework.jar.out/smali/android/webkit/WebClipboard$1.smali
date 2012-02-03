.class Landroid/webkit/WebClipboard$1;
.super Landroid/os/Handler;
.source "WebClipboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebClipboard;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebClipboard;


# direct methods
.method constructor <init>(Landroid/webkit/WebClipboard;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Landroid/webkit/WebClipboard$1;->this$0:Landroid/webkit/WebClipboard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/WebClipboard$1;->this$0:Landroid/webkit/WebClipboard;

    #calls: Landroid/webkit/WebClipboard;->nativeInitPasteboardJni()V
    invoke-static {v0}, Landroid/webkit/WebClipboard;->access$000(Landroid/webkit/WebClipboard;)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
