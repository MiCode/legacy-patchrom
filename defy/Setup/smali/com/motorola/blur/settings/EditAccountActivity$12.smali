.class Lcom/motorola/blur/settings/EditAccountActivity$12;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity;->handleNoActiveServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$12;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iput-object p2, p0, Lcom/motorola/blur/settings/EditAccountActivity$12;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$12;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity$12;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->deleteAndClose(Landroid/net/Uri;)V

    .line 1193
    return-void
.end method
