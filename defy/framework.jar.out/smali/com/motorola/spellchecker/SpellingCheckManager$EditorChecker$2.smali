.class Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$2;
.super Ljava/lang/Object;
.source "SpellingCheckManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->showProgressDialog(Landroid/widget/TextView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;


# direct methods
.method constructor <init>(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$2;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$2;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    #getter for: Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->access$400(Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker$2;->this$1:Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;

    invoke-virtual {v0}, Lcom/motorola/spellchecker/SpellingCheckManager$EditorChecker;->onAsyncCheckFinished()V

    return-void
.end method
