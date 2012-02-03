.class Lcom/android/phone/InVTCallScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;)V

    .line 822
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$300(Lcom/android/phone/InVTCallScreen;)V

    .line 823
    return-void
.end method
