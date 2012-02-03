.class Lcom/android/server/TvOutService$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TvOutService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvOutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/TvOutService$1;->this$0:Lcom/android/server/TvOutService;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/TvOutService$1;->this$0:Lcom/android/server/TvOutService;

    invoke-static {p1}, Lcom/android/server/TvOutService;->onRotationChanged(I)V

    .line 177
    return-void
.end method
