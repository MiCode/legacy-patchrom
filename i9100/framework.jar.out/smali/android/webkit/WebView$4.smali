.class Landroid/webkit/WebView$4;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;

.field final synthetic val$resumeMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1701
    iput-object p1, p0, Landroid/webkit/WebView$4;->this$0:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/WebView$4;->val$resumeMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1703
    iget-object v0, p0, Landroid/webkit/WebView$4;->val$resumeMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1704
    return-void
.end method
