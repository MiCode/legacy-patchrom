.class Landroid/app/Dialog$1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/Dialog$1;->this$0:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/Dialog$1;->this$0:Landroid/app/Dialog;

    #calls: Landroid/app/Dialog;->dismissDialog()V
    invoke-static {v0}, Landroid/app/Dialog;->access$000(Landroid/app/Dialog;)V

    return-void
.end method
