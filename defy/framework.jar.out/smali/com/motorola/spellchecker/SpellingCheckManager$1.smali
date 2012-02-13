.class Lcom/motorola/spellchecker/SpellingCheckManager$1;
.super Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;
.source "SpellingCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/spellchecker/SpellingCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/spellchecker/SpellingCheckManager;


# direct methods
.method constructor <init>(Lcom/motorola/spellchecker/SpellingCheckManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$1;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-direct {p0}, Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceEnabledStatusChanged(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$1;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    #setter for: Lcom/motorola/spellchecker/SpellingCheckManager;->mServiceEnabled:Z
    invoke-static {v0, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$1202(Lcom/motorola/spellchecker/SpellingCheckManager;Z)Z

    return-void
.end method
