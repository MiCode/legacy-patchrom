.class Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$3;
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
    .line 740
    iput-object p1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    iget-object v4, v4, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mMeName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/blur/authenticators/AuthenticatorUtility;->setupManualConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 743
    return-void
.end method
