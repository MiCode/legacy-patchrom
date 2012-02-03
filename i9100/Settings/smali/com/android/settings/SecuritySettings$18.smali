.class Lcom/android/settings/SecuritySettings$18;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$18;->this$0:Lcom/android/settings/SecuritySettings;

    iput-object p2, p0, Lcom/android/settings/SecuritySettings$18;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialogint"

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$18;->this$0:Lcom/android/settings/SecuritySettings;

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mshowDlg:Z

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$18;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/SecuritySettings;->mshowDlg:Z

    .line 1652
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$18;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1655
    :cond_0
    const-string v0, "SecuritySettings"

    const-string v1, "onDismiss() - update Mt status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$18;->this$0:Lcom/android/settings/SecuritySettings;

    #calls: Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1600(Lcom/android/settings/SecuritySettings;)V

    .line 1657
    return-void
.end method
