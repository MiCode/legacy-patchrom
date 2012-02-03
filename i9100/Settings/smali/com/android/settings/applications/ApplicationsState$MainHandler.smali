.class Lcom/android/settings/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 282
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 316
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 284
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 289
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    goto :goto_0

    .line 299
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .restart local p0
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    goto :goto_0

    .line 309
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
