.class Lcom/android/settings/SecuritySettings$16;
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


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$16;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$16;->this$0:Lcom/android/settings/SecuritySettings;

    #calls: Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1600(Lcom/android/settings/SecuritySettings;)V

    .line 1639
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$16;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/SecuritySettings;->mshowDlg:Z

    .line 1640
    return-void
.end method
