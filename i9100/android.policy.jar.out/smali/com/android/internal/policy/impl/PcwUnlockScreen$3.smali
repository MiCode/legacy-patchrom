.class Lcom/android/internal/policy/impl/PcwUnlockScreen$3;
.super Ljava/lang/Object;
.source "PcwUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PcwUnlockScreen;->onClick(Landroid/view/View;)V
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
    .line 256
    iput-object p1, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PcwUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 259
    if-eqz p2, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PcwUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 263
    :cond_0
    return-void
.end method
