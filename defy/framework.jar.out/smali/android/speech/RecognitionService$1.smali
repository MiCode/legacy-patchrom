.class Landroid/speech/RecognitionService$1;
.super Landroid/os/Handler;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method constructor <init>(Landroid/speech/RecognitionService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/RecognitionService$StartListeningArgs;

    .local v0, args:Landroid/speech/RecognitionService$StartListeningArgs;
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v2, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mListener:Landroid/speech/IRecognitionListener;

    #calls: Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    invoke-static {v1, v2, v3}, Landroid/speech/RecognitionService;->access$000(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V

    goto :goto_0

    .end local v0           #args:Landroid/speech/RecognitionService$StartListeningArgs;
    :pswitch_1
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/speech/IRecognitionListener;

    #calls: Landroid/speech/RecognitionService;->dispatchStopListening(Landroid/speech/IRecognitionListener;)V
    invoke-static {v1, p0}, Landroid/speech/RecognitionService;->access$100(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    goto :goto_0

    .restart local p0
    :pswitch_2
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/speech/IRecognitionListener;

    #calls: Landroid/speech/RecognitionService;->dispatchCancel(Landroid/speech/IRecognitionListener;)V
    invoke-static {v1, p0}, Landroid/speech/RecognitionService;->access$200(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    goto :goto_0

    .restart local p0
    :pswitch_3
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    #calls: Landroid/speech/RecognitionService;->dispatchClearCallback()V
    invoke-static {v1}, Landroid/speech/RecognitionService;->access$300(Landroid/speech/RecognitionService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
