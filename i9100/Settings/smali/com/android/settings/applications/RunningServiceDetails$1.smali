.class Lcom/android/settings/applications/RunningServiceDetails$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RunningServiceDetails;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningServiceDetails;

.field final synthetic val$comp:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iput-object p2, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->val$comp:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->val$comp:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningServiceDetails;->activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v0

    .line 478
    .local v0, ad:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    if-eqz v0, :cond_0

    .line 479
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    .line 481
    :cond_0
    return-void
.end method
