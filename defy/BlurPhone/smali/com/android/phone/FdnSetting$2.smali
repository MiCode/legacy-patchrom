.class Lcom/android/phone/FdnSetting$2;
.super Ljava/lang/Object;
.source "FdnSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FdnSetting;->displayMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v0, p1}, Lcom/android/phone/FdnSetting;->onOk(Landroid/content/DialogInterface;)V

    .line 412
    return-void
.end method
