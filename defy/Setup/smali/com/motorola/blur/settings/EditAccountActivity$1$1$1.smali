.class Lcom/motorola/blur/settings/EditAccountActivity$1$1$1;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/motorola/blur/settings/EditAccountActivity$1$1;

.field final synthetic val$runnableErrorCode:I


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity$1$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1$1;->this$2:Lcom/motorola/blur/settings/EditAccountActivity$1$1;

    iput p2, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1$1;->val$runnableErrorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1$1;->this$2:Lcom/motorola/blur/settings/EditAccountActivity$1$1;

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1$1;->this$2:Lcom/motorola/blur/settings/EditAccountActivity$1$1;

    iget-object v1, v1, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v1, v1, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget v2, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1$1;->val$runnableErrorCode:I

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    .line 271
    return-void
.end method
