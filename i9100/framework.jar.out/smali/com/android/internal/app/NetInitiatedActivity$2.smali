.class Lcom/android/internal/app/NetInitiatedActivity$2;
.super Landroid/os/Handler;
.source "NetInitiatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    #getter for: Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I
    invoke-static {v0}, Lcom/android/internal/app/NetInitiatedActivity;->access$100(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    iget-object v1, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    #getter for: Lcom/android/internal/app/NetInitiatedActivity;->default_response:I
    invoke-static {v1}, Lcom/android/internal/app/NetInitiatedActivity;->access$200(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v1

    #calls: Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V
    invoke-static {v0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->access$300(Lcom/android/internal/app/NetInitiatedActivity;I)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/NetInitiatedActivity;->finish()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
