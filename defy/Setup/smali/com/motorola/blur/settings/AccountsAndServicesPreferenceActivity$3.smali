.class Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3;
.super Ljava/lang/Object;
.source "AccountsAndServicesPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->confirmDeleteAccount(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    iput-object p2, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$200(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3;->val$account:Landroid/accounts/Account;

    new-instance v2, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3$1;

    invoke-direct {v2, p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3$1;-><init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 585
    return-void
.end method
