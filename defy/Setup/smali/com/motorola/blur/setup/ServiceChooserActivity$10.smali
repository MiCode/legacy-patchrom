.class Lcom/motorola/blur/setup/ServiceChooserActivity$10;
.super Ljava/lang/Object;
.source "ServiceChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;->launchSettingsScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

.field final synthetic val$gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

.field final synthetic val$messageString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceChooserActivity;Ljava/lang/String;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$10;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$10;->val$messageString:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$10;->val$gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$10;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$10;->val$messageString:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$10;->val$gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    #calls: Lcom/motorola/blur/setup/ServiceChooserActivity;->showDeleteAccountDialog(Ljava/lang/String;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$900(Lcom/motorola/blur/setup/ServiceChooserActivity;Ljava/lang/String;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V

    .line 1130
    return-void
.end method
