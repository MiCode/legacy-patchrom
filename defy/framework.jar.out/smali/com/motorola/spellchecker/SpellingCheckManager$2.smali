.class final Lcom/motorola/spellchecker/SpellingCheckManager$2;
.super Ljava/lang/Object;
.source "SpellingCheckManager.java"

# interfaces
.implements Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/spellchecker/SpellingCheckManager;->checkEditor(Landroid/widget/TextView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$editor:Landroid/widget/TextView;

.field final synthetic val$end:I

.field final synthetic val$instance:Lcom/motorola/spellchecker/SpellingCheckManager;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/motorola/spellchecker/SpellingCheckManager;Landroid/widget/TextView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$2;->val$instance:Lcom/motorola/spellchecker/SpellingCheckManager;

    iput-object p2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$2;->val$editor:Landroid/widget/TextView;

    iput p3, p0, Lcom/motorola/spellchecker/SpellingCheckManager$2;->val$start:I

    iput p4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$2;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionEstablished()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$2;->val$instance:Lcom/motorola/spellchecker/SpellingCheckManager;

    iget-object v1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$2;->val$editor:Landroid/widget/TextView;

    iget v2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$2;->val$start:I

    iget v3, p0, Lcom/motorola/spellchecker/SpellingCheckManager$2;->val$end:I

    #calls: Lcom/motorola/spellchecker/SpellingCheckManager;->spell(Landroid/widget/TextView;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$1300(Lcom/motorola/spellchecker/SpellingCheckManager;Landroid/widget/TextView;II)V

    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$2;->val$instance:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-static {v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$1410(Lcom/motorola/spellchecker/SpellingCheckManager;)I

    return-void
.end method
