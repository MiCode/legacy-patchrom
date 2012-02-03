.class Lcom/android/settings/ConfirmLockPassword$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$1;->this$0:Lcom/android/settings/ConfirmLockPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
