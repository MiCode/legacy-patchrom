.class Lcom/android/settings/SecuritySettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 285
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mFirstSignin:Z
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$400(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    #setter for: Lcom/android/settings/SecuritySettings;->mFirstSignin:Z
    invoke-static {v0, v7}, Lcom/android/settings/SecuritySettings;->access$202(Lcom/android/settings/SecuritySettings;Z)Z

    .line 291
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-16le\"><body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805e3

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "<a href=http://www.samsungdive.com>http://www.samsungdive.com</a></body></html>"

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ad:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ad:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 297
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ad:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v1, v1, Lcom/android/settings/SecuritySettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 298
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ad:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ad:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mRemoteControlReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$600(Lcom/android/settings/SecuritySettings;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    return-void
.end method
