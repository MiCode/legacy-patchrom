.class Lcom/motorola/blur/setup/ServiceChooserActivity$2;
.super Ljava/lang/Object;
.source "ServiceChooserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$2;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$2;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #setter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mService:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$502(Lcom/motorola/blur/setup/ServiceChooserActivity;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 266
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$2;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mService:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$502(Lcom/motorola/blur/setup/ServiceChooserActivity;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 270
    return-void
.end method
