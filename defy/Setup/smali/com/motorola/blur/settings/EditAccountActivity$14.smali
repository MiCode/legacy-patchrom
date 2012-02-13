.class Lcom/motorola/blur/settings/EditAccountActivity$14;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$dialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$14;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iput-object p2, p0, Lcom/motorola/blur/settings/EditAccountActivity$14;->val$dialog:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$14;->val$dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1203
    return-void
.end method
