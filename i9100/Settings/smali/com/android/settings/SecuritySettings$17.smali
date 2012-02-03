.class Lcom/android/settings/SecuritySettings$17;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$filenv:Lcom/android/internal/util/NVStore;

.field final synthetic val$mtcheckPref:Z

.field final synthetic val$storedPhPwd:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/view/View;Ljava/lang/String;Lcom/android/internal/util/NVStore;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iput-object p2, p0, Lcom/android/settings/SecuritySettings$17;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/SecuritySettings$17;->val$storedPhPwd:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    iput-boolean p5, p0, Lcom/android/settings/SecuritySettings$17;->val$mtcheckPref:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v12, "com.samsung.mobileTracker.ui"

    const-string v11, "1"

    const-string v10, "0"

    const-string v9, ";"

    .line 1576
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->val$view:Landroid/view/View;

    const v2, 0x7f0b0035

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1577
    .local v1, tview:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    if-eqz v0, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$1700(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    .line 1579
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$1800(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/SecuritySettings;->confirmPhPwd:Ljava/lang/String;

    .line 1585
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$storedPhPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v3, v3, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v4, v4, Lcom/android/settings/SecuritySettings;->confirmPhPwd:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v5, v5, Lcom/android/settings/SecuritySettings;->enterPhPwd:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->ValidatePhPwd(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1587
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/settings/SecuritySettings;->mshowDlg:Z

    .line 1588
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v3, v3, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 1591
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings$17;->val$mtcheckPref:Z

    if-nez v0, :cond_3

    .line 1593
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1594
    .local v6, mtintent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    #calls: Lcom/android/settings/SecuritySettings;->ValidateMTData()Z
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$2000(Lcom/android/settings/SecuritySettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1596
    const-string v0, "com.samsung.mobileTracker.ui"

    const-string v0, "com.samsung.mobileTracker.ui.MobileTrackerUI_TW"

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0, v6}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1634
    .end local v6           #mtintent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$1900(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/SecuritySettings;->enterPhPwd:Ljava/lang/String;

    goto :goto_0

    .line 1600
    .restart local v6       #mtintent:Landroid/content/Intent;
    :cond_2
    const-string v0, "com.samsung.mobileTracker.ui"

    const-string v0, "com.samsung.mobileTracker.ui.MobileTrackerUI"

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1606
    .end local v6           #mtintent:Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1608
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    move-object v7, v11

    .line 1609
    .local v7, phlock:Ljava/lang/String;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1615
    .local v8, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    sget-object v2, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v8, v2}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 1616
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    #calls: Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1600(Lcom/android/settings/SecuritySettings;)V

    goto/16 :goto_2

    .line 1608
    .end local v7           #phlock:Ljava/lang/String;
    .end local v8           #str:Ljava/lang/String;
    :cond_4
    const-string v0, "0"

    move-object v7, v10

    goto/16 :goto_3

    .line 1620
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "1"

    move-object v7, v11

    .line 1621
    .restart local v7       #phlock:Ljava/lang/String;
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1627
    .restart local v8       #str:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->val$filenv:Lcom/android/internal/util/NVStore;

    sget-object v2, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v8, v2}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 1628
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    #calls: Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1600(Lcom/android/settings/SecuritySettings;)V

    goto/16 :goto_2

    .line 1620
    .end local v7           #phlock:Ljava/lang/String;
    .end local v8           #str:Ljava/lang/String;
    :cond_6
    const-string v0, "0"

    move-object v7, v10

    goto/16 :goto_4

    .line 1632
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$17;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/SecuritySettings;->mshowDlg:Z

    goto/16 :goto_2
.end method
