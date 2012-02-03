.class Lcom/android/internal/policy/impl/PcwUnlockScreen$1;
.super Ljava/lang/Object;
.source "PcwUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PcwUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PcwUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PcwUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PcwUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PcwUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 99
    return-void
.end method
