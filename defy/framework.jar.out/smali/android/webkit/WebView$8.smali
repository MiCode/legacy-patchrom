.class Landroid/webkit/WebView$8;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->showSelectTextDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v4, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, items:[Ljava/lang/String;
    aget-object v4, v2, p2

    iget-object v5, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10404bb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, send:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TEXT"

    iget-object v5, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mSelectedText:Ljava/lang/String;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10404bd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #send:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v4, v2, p2

    iget-object v5, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10404bc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402de

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :try_start_1
    const-string v4, "clipboard"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .local v0, clip:Landroid/text/IClipboard;
    iget-object v4, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mSelectedText:Ljava/lang/String;
    invoke-static {v4}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0           #clip:Landroid/text/IClipboard;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "webview"

    const-string v5, "Clipboard failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v3       #send:Landroid/content/Intent;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
