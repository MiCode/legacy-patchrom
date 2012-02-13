.class Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$2;
.super Ljava/lang/Object;
.source "DeblurEmailAuthenticator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->showManualConfigurationUI(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$2;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$2;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->resetAccount()V

    .line 748
    return-void
.end method
