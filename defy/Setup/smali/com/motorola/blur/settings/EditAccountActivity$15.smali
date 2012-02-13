.class Lcom/motorola/blur/settings/EditAccountActivity$15;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$15;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$15;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->setupProgressDialog()V
    invoke-static {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->access$100(Lcom/motorola/blur/settings/EditAccountActivity;)V

    .line 1559
    return-void
.end method
