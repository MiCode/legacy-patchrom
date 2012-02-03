.class Lcom/android/internal/policy/impl/face/Preview$5;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/face/Preview;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/face/Preview;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/face/Preview;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/Preview$5;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$5;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/face/Preview;->access$300(Lcom/android/internal/policy/impl/face/Preview;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$5;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/face/Preview;->access$300(Lcom/android/internal/policy/impl/face/Preview;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 356
    return-void
.end method
