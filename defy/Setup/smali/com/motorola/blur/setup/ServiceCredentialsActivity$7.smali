.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$7;
.super Ljava/lang/Object;
.source "ServiceCredentialsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity;->onFinished(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$7;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$7;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->goBack()V

    .line 922
    return-void
.end method
