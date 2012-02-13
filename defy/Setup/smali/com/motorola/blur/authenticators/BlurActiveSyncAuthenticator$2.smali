.class Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$2;
.super Ljava/lang/Object;
.source "BlurActiveSyncAuthenticator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->invalidCertificateUI(Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$2;->this$0:Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$2;->this$0:Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->resetAccount()V

    .line 92
    return-void
.end method
