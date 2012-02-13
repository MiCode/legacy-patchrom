.class public Lcom/motorola/blur/setup/ActionBarButton;
.super Ljava/lang/Object;
.source "ActionBarButton.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static final create(Landroid/content/Context;II)Landroid/widget/Button;
    .locals 1
    .parameter "context"
    .parameter "text"
    .parameter "id"

    .prologue
    .line 12
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 13
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setId(I)V

    .line 15
    return-object v0
.end method
