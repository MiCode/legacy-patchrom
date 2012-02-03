.class Lcom/android/phone/FdnSetting$1$1;
.super Ljava/lang/Object;
.source "FdnSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FdnSetting$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/FdnSetting$1;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting$1;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1$1;->this$1:Lcom/android/phone/FdnSetting$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/phone/FdnSetting$1$1;->this$1:Lcom/android/phone/FdnSetting$1;

    iget-object v0, v0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v0}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 303
    iget-object v0, p0, Lcom/android/phone/FdnSetting$1$1;->this$1:Lcom/android/phone/FdnSetting$1;

    iget-object v0, v0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v0, v1}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 304
    return-void
.end method
