.class Lcom/android/phone/CallFeaturesSetting$4;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 995
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 996
    .local v0, result:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1001
    :goto_0
    return-void

    .line 998
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/CallFeaturesSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 996
    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method
