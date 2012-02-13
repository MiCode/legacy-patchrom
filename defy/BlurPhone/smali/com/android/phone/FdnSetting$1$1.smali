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
    .line 300
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1$1;->this$1:Lcom/android/phone/FdnSetting$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/phone/FdnSetting$1$1;->this$1:Lcom/android/phone/FdnSetting$1;

    iget-object v0, v0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v0, p1}, Lcom/android/phone/FdnSetting;->onCancel(Landroid/content/DialogInterface;)V

    .line 303
    return-void
.end method
