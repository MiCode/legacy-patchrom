.class Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$1;
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
    .line 94
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, activeServiceValues:Landroid/content/ContentValues;
    const-string v2, "verify_ca"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, "= \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const-string v2, "BASA"

    const-string v3, "Error saving to DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    invoke-virtual {v2}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->cleanUp()V

    .line 108
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    invoke-virtual {v2}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->startAuthentication()V

    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    return-void
.end method
