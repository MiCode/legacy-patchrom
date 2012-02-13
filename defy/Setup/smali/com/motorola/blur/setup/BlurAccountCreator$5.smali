.class Lcom/motorola/blur/setup/BlurAccountCreator$5;
.super Ljava/lang/Object;
.source "BlurAccountCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/BlurAccountCreator;->showRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BlurAccountCreator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V
    .locals 0
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator$5;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 868
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator$5;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v1}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$1200(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    .line 869
    .local v0, prog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->getCurrentPoint()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    .line 870
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator$5;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->requestSettings()V
    invoke-static {v1}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$500(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    .line 871
    return-void
.end method
