.class Lcom/android/settings/SecuritySettings$11;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 936
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$11;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$11;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->setResult(I)V

    .line 939
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$11;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1400(Lcom/android/settings/SecuritySettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 940
    return-void
.end method
