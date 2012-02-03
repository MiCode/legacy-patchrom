.class Lcom/android/settings/applications/InstalledAppDetails$8;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$8;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$8;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$1200(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$8;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 856
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$8;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$1200(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$8;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    return-void

    .line 855
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
