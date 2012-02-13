.class Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$3;
.super Ljava/lang/Object;
.source "BlurEmailAuthenticator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->showManualConfigurationUI(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->resetAccount()V

    .line 603
    return-void
.end method
